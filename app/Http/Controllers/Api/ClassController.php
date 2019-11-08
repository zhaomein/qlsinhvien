<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Khoa;
use App\Lop;
use App\Sinhvien;
use \Validator;

class ClassController extends Controller
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

        $classes = Lop::orderBy('id')->skip($offset)->take($limit)->get();
        
        //$classes->load('khoas');
        return response()->json([
            'status' => true,
            'data' => $classes
        ]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'code' => 'required|min:6',
            'classname' => 'required',
            'band_id' => 'required'
        ]);

        if ($validator->fails()) {
            return [
                'status' => false,
                'message' => $validator->errors()->first()
            ];
        } else {
            $band = Khoa::find($request->band_id);

            if($band == null) {
                return [
                    'status' => false,
                    'message' => 'Band not exists!' 
                ];
            }

            $class = new Lop();

            $class->malop = $request->code;
            $class->tenlop = $request->classname;
            $class->khoa_id = $request->band_id;
            $class->save();

            return [
                'status' => true,
                'data' => $class
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
            'classname' => 'required',
            'band_id' => 'required'
        ]);

        if ($validator->fails()) {
            return [
                'status' => false,
                'message' => $validator->errors()->first()
            ];
        } else {
            $class = Lop::find($id);

            if($class == null) {
                return [
                    'status' => false,
                    'message' => 'Class not found!'
                ];
            }

            $band = Khoa::find($request->band_id);

            if($band == null) {
                return [
                    'status' => false,
                    'message' => 'Band not exists!' 
                ];
            }

            $class->malop = $request->code;
            $class->tenlop = $request->classname;
            $class->khoa_id = $request->band_id;
            $class->save();

            return [
                'status' => true,
                'data' => $class
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
            Lop::destroy($id);
            return [
                'status' => true,
                'data' => 'Delete success!'
            ];
        } catch (\Exception $e) {
            return [
                'status' => false,
                'message' => 'Error when delete class!'
            ];
        }
    }

    //get student of a class
    function getStudents(Request $request, $id) {
        $class = Lop::find($id);

        if($class == null) {
            return [
                'status' => false,
                'message' => 'Class not found!'
            ];
        }

        $offset = !empty($request->offset) ? $request->offset: 0;
        $limit = !empty($request->limit) ? $request->limit: 20;

        $students = Sinhvien::where('lop_id', $id)->orderBy('id')->skip($offset)->take($limit)->get();

        return response()->json([
            'status' => true,
            'data' => $students
        ]);

    }
}
