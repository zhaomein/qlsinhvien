<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Giangvien;
use App\Sinhvien;
use App\Lop;
use App\Monhoc;

class DashboardController extends Controller
{
    function index() {
        
        return response()->json([
            'status' => true,
            'data' => [
                'teachers' => Giangvien::count(),
                'students' => Sinhvien::count(),
                'classes' => Lop::count(),
                'subjects' => Monhoc::count()
            ]
        ]);
    }
}
