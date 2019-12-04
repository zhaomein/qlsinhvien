<?php

namespace App\Http\Controllers\Api;

use App\Diem;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PointController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $validator = \Validator::make($request->all(), [
            'subject_id' => 'required'
        ]);

        if ($validator->fails()) {
            return [
                'status' => false,
                'message' => $validator->errors()->first()
            ];
        } else {
            $points = Diem::where('monhoc_id', $request->subject_id)->get();
            $points->load('sinhviens');

            return response()->json([
                'status' => true,
                'data' => $points
            ]);
        }
    }
}
