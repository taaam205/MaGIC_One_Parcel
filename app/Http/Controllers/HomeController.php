<?php

namespace App\Http\Controllers;

use App\User;
use App\Staff;
use App\EmailBackup;
use Illuminate\Http\Request;
use App\Mail\SendMailToStaff;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
// use Illuminate\Support\Facades\Validator;
use Validator;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    // public function index()
    // {
    //     // Auth::user()->assignRole('staff');
    //     $staffs = $this->getStuffs();
    //     return view('home', compact('staffs'));
    // }

    public function index()
    {
        if (Auth::User()->hasRole('admin')) {
            $staffs = $this->getStuffs();
            return redirect("/admin");
        }
        return view('pages.User.dashboard');
    }
    
    public function getStaffById($id)
    {
        return Staff::find($id);
    }
    
    public function getStuffs()
    {
        $staffs = Staff::all();
        return $staffs;
    }
    
    public function staffs()
    {
        return view('staffs');
    }

    public function addStaff(Request $request)
    {

        $validation = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:staff'],
        ]);

        if ($validation->fails()) {
            Session::flash('error', "Something went wrong!");
        } else {
            $staff = Staff::create([
                'name' => $request['name'],
                'email' => $request['email'],
            ]);

            // $staff->assignRole('staff');

            Session::flash('message', "Staff Registered");
        }
        return redirect()->back(); 
    }

    public function sendEmail(Request $request)
    {

        $validation = Validator::make($request->all(), [
            'staff_id' => ['required'],
            'barcode' => ['required'],
        ]);

        if ($validation->fails()) {
            Session::flash('error', "Something went wrong!");
        } 
        else 
        {
            $sender = Auth::user();

            $recipient = $this->getStaffById($request['staff_id']);
            
            $barcode = $request['barcode'];
            $optional = $request['optional'];

            Mail::to($recipient->email)->send(new SendMailToStaff($sender, $recipient, $barcode, $optional));

            if (Mail::failures()) {
                Session::flash('mailSendFailed', "Email was not send successfully!");
            }
            else {
                $staff = EmailBackup::create([
                    'from' => $sender->email,
                    'to' => $recipient->email,
                    'trackingID' => $barcode,
                    'optional' => $optional
                ]);
                Session::flash('Mail', 'You just sent an Email');
            }
        }

        // $sender = Auth::user();

        // $recipient = $this->getStaffById($request['staff_id']);
        
        // $barcode = $request['barcode'];
        // $optional = $request['optional'];

        // Mail::to($recipient->email)->send(new SendMailToStaff($sender, $recipient, $barcode, $optional));

        // if (Mail::failures()) {
        //     Session::flash('mailSendFailed', "Email was not send successfully!");
        // }
        // else {
            
        // }

        return redirect()->back();
    }
}