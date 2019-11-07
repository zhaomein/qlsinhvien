<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\GiangVien;
use \Validator;

class TeacherController extends Controller
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

        $teachers = GiangVien::orderBy('id')->skip($offset)->take($limit)->get();

        return response()->json([
            'status' => true,
            'data' => $teachers
        ]);
    }


    public function store(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'code' => 'required|min:6',
            'surname' => 'required|min:2|max:10',
            'name' => 'required|min:2|max:10', 
            'gender' => 'required', 
            'birthday' => 'required'
        ]);

        if ($validator->fails()) {
            return [
                'status' => false,
                'message' => $validator->errors()->first()
            ];
        }else{
            $teacher = new GiangVien();

            $teacher->magv = $request->code;
            $teacher->hogv = $request->surname;
            $teacher->tengv = $request->name;
            $teacher->gioitinh = $request->gender;
            $teacher->ngaysinh = $request->birthday;

            $teacher->save();
            return [
                'status' => true,
                'data' => $teacher
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
            'birthday' => 'required'
        ]);

        if ($validator->fails()) {
            return [
                'status' => false,
                'message' => $validator->errors()->first()
            ];
        } else {
            $teacher = GiangVien::find($id);

            if($teacher == null) {
                return [
                    'status' => false,
                    'message' => 'teacher not found!' 
                ];
            }

            $teacher->magv = $request->code;
            $teacher->hogv = $request->surname;
            $teacher->tengv = $request->name;
            $teacher->gioitinh = $request->gender;
            $teacher->ngaysinh = $request->birthday;

            $teacher->update();
            return [
                'status' => true,
                'data' => $teacher
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
            GiangVien::destroy($id);
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
