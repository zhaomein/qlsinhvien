<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SinhVien;
use App\Lop;

class StudentController extends Controller
{
    //get list students
    function getStudents(Request $request) {
        $classCode = !empty($request->class) ? $request->class: false;
        $offset = !empty($request->offset) ? $request->offset: 0;
        $limit = !empty($request->limit) ? $request->limit: 20;

        $students = [];

        if($classCode != false) {
            $class = Lop::where('malop', $classCode)->first();
            if(!is_object($class)) {
                return response()->json([
                    'status' => false,
                    'message' => 'Mã lớp không chính xác!'
                ]);
            }

            $students = SinhVien::where('lop_id', $class->id)->orderBy('masv')->skip($offset)->take($limit)->get();
            $students->load('lops');
        } else {
            $students = SinhVien::orderBy('masv')->skip($offset)->take($limit)->get();
            $students->load('lops');
        }

        return response()->json([
            'status' => true,
            'data' => $students
        ]);
    }
}
