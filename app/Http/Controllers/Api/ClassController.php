<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Lop;
use App\Khoa;


class ClassController extends Controller
{
        //get list classes
        function getClasses(Request $request) {
            $bandCode = !empty($request->band) ? $request->band: false;
            $offset = !empty($request->offset) ? $request->offset: 0;
            $limit = !empty($request->limit) ? $request->limit: 20;
    
            $students = [];
    
            if($bandCode != false) {
                $band = Khoa::where('makhoa', $bandCode)->first();

                if(!is_object($band)) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Mã khoa không chính xác!'
                    ]);
                }

                $students = Lop::where('khoa_id', $band->id)->orderBy('malop')->skip($offset)->take($limit)->get();
                $students->load('khoas');
            } else {
                $students = Lop::orderBy('malop')->skip($offset)->take($limit)->get();
                $students->load('khoas');
            }
    
            return response()->json([
                'status' => true,
                'data' => $students
            ]);
        }
}
