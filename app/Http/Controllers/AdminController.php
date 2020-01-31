<?php

namespace App\Http\Controllers;

use App\User;
use App\Staff;
use Validator;
use App\EmailBackup;
use Illuminate\Http\Request;
use App\Mail\SendMailToStaff;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

class AdminController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }
    public function index()
    {
        $users = User::all()->count();
        $staffs = Staff::all()->count();
        $emails = EmailBackup::all()->count();
        return view("pages.Admin.dashboard", compact("users", "staffs", "emails"));
    }

    public function getDashboardContent()
    {
        $users = User::all()->count();
        $roles = Role::all()->count();
        $staffs = Staff::all()->count();
        $emails = EmailBackup::all()->count();
        
        return response()->json(['users' => $users, 'roles' => $roles, 'staffs' => $staffs, 'emails' => $emails]);
    }

    public function users()
    {
        return User::with('roles')->paginate(10);
    }

    public function roles()
    {
        return Role::paginate(10);
    }

    public function staffs()
    {
        return Staff::paginate(10);
    }
    
    public function getStaffById($id)
    {
        return Staff::find($id);
    }

    public function sendEmail(Request $request)
    {

        $validation = Validator::make($request->all(), [
            'staffId' => ['required'],
            'trackingNumber' => ['required'],
            // 'staff_id' => ['required'],
            // 'barcode' => ['required'],
        ]);

        if ($validation->fails()) {
            return response()->json(['validation' => "Please enter required data"], 422);
            // return response()->json(['validation' => $request->all()]);
        } 
        else 
        {
            $sender = Auth::user();

            $recipient = $this->getStaffById($request['staffId']);
            
            $trackingNumber = $request['trackingNumber'];
            $optionalMessage = $request['optionalMessage'];

            Mail::to($recipient->email)->send(new SendMailToStaff($sender, $recipient, $trackingNumber, $optionalMessage));

            if (Mail::failures()) {
                // Session::flash('mailSendFailed', "Email was not send successfully!");
                return response()->json(['mailSendFailed' => "Email was not send successfully!"]);
            }
            else {
                $staff = EmailBackup::create([
                    'from' => $sender->email,
                    'to' => $recipient->email,
                    'trackingID' => $trackingNumber,
                    'optional' => $optionalMessage
                ]);
                // Session::flash('Mail', 'You just sent an Email');
                return response()->json(['mailSend' => "Email was send successfully!"], 200);
            }
        }
    }

    public function store(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        if ($validation->fails()) {
            return response()->json(['validation' => "Please enter required data"], 422);
        } 
        else {
            $user = User::create([
                'name' => $request['name'],
                'email' => $request['email'],
                'password' => Hash::make($request['password']),
            ]);
            $user->assignRole('admin');
            return response()->json(["success" => "User created successfully"], 200);
        }
    }

    public function update(Request $request, $id)
    {   
        $this->validate($request, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        if ($validation->fails()) {
            return response()->json(['validation' => "Please enter required data"], 422);
        } else {

            $user = User::findOrFail($id);
            $user->update($request->all());

            return response()->json(["success" => "User was edited successfully"], 200);
        }
    }

    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return response()->json([
         'message' => 'User deleted successfully'
        ], 200);
    }
}
