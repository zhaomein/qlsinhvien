<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Monhoc;

class SubjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $students = Monhoc::all();

        $students->load('lops');
        return response()->json([
            'status' => true,
            'data' => $students
        ]);
    }


    public function store(Request $request)
    {

        $validator = \Validator::make($request->all(), [
            'mamon' => 'required',
            'tenmon' => 'required',
            'sotinchi' => 'required', 
            'sotiet' => 'required', 
            'hocky_id' => 'required'
        ]);

        if ($validator->fails()) {
            return [
                'status' => false,
                'message' => $validator->errors()->first()
            ];
        }else{
            $teacher = new Monhoc();

            $teacher->mamon = $request->mamon;
            $teacher->tenmon = $request->tenmon;
            $teacher->sotinchi = $request->sotinchi;
            $teacher->sotiet = $request->sotiet;
            $teacher->hocky_id = $request->hocky_id;

            $teacher->save();
            return [
                'status' => true,
                'data' => $teacher
            ];
        }
    }


    public function destroy($id)
    {
        try {
            Monhoc::destroy($id);
            return [
                'status' => true,
                'data' => 'Delete success!'
            ];
        } catch (\Exception $e) {
            return [
                'status' => false,
                'message' => 'Error when delete teacher!'
            ];
        }
    }
}
