<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Sinhvien;
use App\Lop;
use \Validator;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $offset = !empty($request->offset) ? $request->offset: 0;
        $limit = !empty($request->limit) ? $request->limit: 20;

        $students = Sinhvien::orderBy('id')->skip($offset)->take($limit)->get();

        $students->load('lops');
        return response()->json([
            'status' => true,
            'data' => $students
        ]);
    }


    public function store(Request $request)
    {
  
        $validator = Validator::make($request->all(), [
            'code' => 'required|min:6',
            'surname' => 'required|min:2|max:10',
            'name' => 'required|min:2|max:10', 
            'gender' => 'required', 
            'birthday' => 'required',
            'address' => 'required', 
            'class_id' => 'required'
        ]);

        if ($validator->fails()) {
            return [
                'status' => false,
                'message' => $validator->errors()->first()
            ];
        }else{
            $class = Lop::find($request->class_id);

            if($class == null) {
                return [
                    'status' => false,
                    'message' => 'Class not exists!' 
                ];
            }

            $student = new Sinhvien();

            $student->masv = $request->code;
            $student->hosv = $request->surname;
            $student->tensv = $request->name;
            $student->gioitinh = $request->gender;
            $student->ngaysinh = $request->birthday;
            $student->quequan = $request->address;
            $student->lop_id = $class->id;

            $student->save();
            return [
                'status' => true,
                'data' => $student
            ];
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'code' => 'required|min:6',
            'surname' => 'required|min:2|max:10',
            'name' => 'required|min:2|max:10', 
            'gender' => 'required', 
            'birthday' => 'required',
            'address' => 'required', 
            'class_id' => 'required'
        ]);

        if ($validator->fails()) {
            return [
                'status' => false,
                'message' => $validator->errors()->first()
            ];
        } else {
            $student = Sinhvien::find(vid);

            if($student == null) {
                return [
                    'status' => false,
                    'message' => 'Student not found!' 
                ];
            }

            $class = Lop::find($request->class_id);
            if($class == null) {
                return [
                    'status' => false,
                    'message' => 'Class not exists!' 
                ];
            }

            $student->masv = $request->code;
            $student->hosv = $request->surname;
            $student->tensv = $request->name;
            $student->gioitinh = $request->gender;
            $student->ngaysinh = $request->birthday;
            $student->quequan = $request->address;
            $student->lop_id = $class->id;

            $student->update();
            return [
                'status' => true,
                'data' => $student
            ];
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            Sinhvien::destroy(vid);
            return [
                'status' => true,
                'data' => 'Delete success!'
            ];
        } catch (\Exception $e) {
            return [
                'status' => false,
                'message' => 'Error when delete student!'
            ];
        }
    }
}
