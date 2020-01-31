<?php

namespace App\Http\Controllers;

use App\Staff;
use Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;

class StaffController extends Controller
{
    public function index()
    {
        return Staff::latest()->paginate(10);
        // return DB::table('staff')->latest()->paginate(10);
    }
    
    public function getAll()
    {
        return Staff::all();
    }
    
    public function store(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:staff'],
        ]);

        if ($validation->fails()) {
            return response()->json(['validation' => "Please enter required data"], 422);
        } 
        else {
            $staff = Staff::create([
                'name' => $request['name'],
                'email' => $request['email'],
            ]);
            return response()->json(["success" => "Staff created successfully"], 200);
        }
    }

    public function update(Request $request,$id)
    {   
        $validation = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
        ]);

        if ($validation->fails()) {
            return response()->json(['validation' => "Please enter required data"], 422);
        } else {

            $staff = Staff::findOrFail($request['id']);
            $staff->name = $request['name'];
            $staff->email = $request['email'];
            $staff->save();

            return response()->json(["success" => "Staff was edited successfully"], 200);
        }
    }

    public function destroy($id)
    {
        $staff = Staff::findOrFail($id);
        $staff->delete();
        return response()->json([
         'message' => 'staff deleted successfully'
        ], 200);
    }
}
