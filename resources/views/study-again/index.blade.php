@extends('adminlte::page')
@section('title','Danh sách học lại')
@section('content_header')
    <div class="row">
        {{--{!! Form:: !!}--}}
        <form method="post" id="search-form">
            <div class="col-md-8">
                <div class="btn btn-flat fix-box" style="margin: 0;padding: 0 0 0 12px;">
                    <select name="type-search" id="type_search" class="form-control">
                        <option value="0">Gần Đúng</option>
                        <option value="1">Chính Xác</option>
                    </select>
                    <div class="btn-group wrap-click-drop">
                        <a class="btn bg-teal btn-block btn-flat dropdown-toggle" data-toggle="dropdown"> Tìm kiếm
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left" style="padding: 10px;width: 300px;">
                            <li>
                                <div class="form-group has-feedback">
                                    <span class="fa fa-search form-control-feedback"></span>
                                    <input type="text" name="search-malop" class="form-control" placeholder="Mã lớp" id="search-malop">
                                </div>
                            </li>
                            <li>
                                <div class="form-group has-feedback">
                                    <span class="fa fa-search form-control-feedback"></span>
                                    <input type="text" name="search-mamh" class="form-control" placeholder="Mã môn học" id="search-mamh" >
                                </div>
                            </li>
                            <li>
                                <div class="form-group has-feedback">
                                    <span class="fa fa-search form-control-feedback"></span>
                                    <input type="text" name="search-masv" class="form-control" placeholder="Mã sinh viên" id="search-masv" >
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </form>
        <div class="col-md-4">
            <ol class="breadcrumb" style="padding: 16px 0px 0px 150px;margin: 0;background-color: transparent;border-radius: 0;">
                <li><a href="#"><i class="fa fa-user"></i> Người sử dụng</a></li>
                <li class="active">Danh Sách</li>
            </ol>
        </div>
    </div>
@stop
@section('content')
    {{--@can('admin')--}}
    {{--<!-- Main content -->--}}
    {{--<div class="btn-group pull-right"   >--}}
        {{--<div class="btn-group action_btn relative" style="position: relative;">--}}
            {{--<button class="btn btn-info btn-flat margin  dropdown-toggle" type="button" data-toggle="dropdown">--}}
                {{--<i class="fa fa-wrench" aria-hidden="true"></i> Công cụ--}}
                {{--<i class="fa fa-angle-down" aria-hidden="true"></i>--}}
            {{--</button>--}}
            {{--<ul class="dropdown-menu" role="menu" style="min-width: 100%!important;top: 50px;">--}}
                {{--<li>--}}
                    {{--<a class="btn btn-xs btn-flat" tabindex="0" aria-controls="street-table" target="_blank" href="">--}}
                        {{--<i class="fa fa-file-excel-o" aria-hidden="true"></i>--}}
                        {{--<span>Nhập Excel</span>--}}
                    {{--</a>--}}
                {{--</li>--}}
                {{--<li>--}}
                    {{--<a type="button" class="btn btn-xs btn-flat btn_add_user" data-toggle="modal" data-target="#add_student">--}}
                        {{--<i class="fa fa-plus" aria-hidden="true"></i>--}}
                        {{--<span>Thêm</span>--}}
                    {{--</a>--}}
                {{--</li>--}}
            {{--</ul>--}}
        {{--</div>--}}
    {{--</div>--}}
    {{--@endcan--}}
    <table class="table table-bordered table-striped" id="custom-table">
        <thead>
        <tr>
            <th>STT</th>
            <th>Mã sinh viên</th>
            <th>Họ Tên Sinh Viên</th>
            <th>Lớp</th>
            <th>Môn học</th>
            <th>Điểm chuyên cần</th>
            <th>Điểm thường xuyên</th>
            <th>Điểm giữa kỳ</th>
            <th>Điểm cuối kỳ</th>
            <th>Lý do</th>
        </tr>
        </thead>
    </table>
@stop
@section('js')
    <!-- List user JS -->
    <script src="{{ asset('js/student.js')}}"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.0/js/dataTables.buttons.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
    <script src="//cdn.datatables.net/buttons/1.5.0/js/buttons.html5.min.js"></script>
    <script>
        var url="{{route('studyagain.data_json')}}";
        $(function() {
            datatable = $('#custom-table').DataTable({
                dom: 'Bfrtip',
                "paging": false,
                processing: true,
                serverSide: true,
                autoWidth: true,
                searching: false,
                {{--columnDefs: [--}}
                    {{--{--}}
                        {{--"targets": 0,--}}
                        {{--"className": "text-center",--}}
                        {{--'width':'5%'--}}
                    {{--},--}}
                        {{--@can('admin')--}}
                    {{--{--}}
                        {{--"targets": 7,--}}
                        {{--"className": "text-center",--}}
                    {{--}--}}
                    {{--@endcan--}}
                    {{--],--}}
//            stateSave: true,
                ajax: {
                    url: url,
                    data: function (d) {
                       d.search.custom = {
                           typesearch:$('#type_search').val(),
                           malop: $('input[name=search-malop]').val(),
                           masv: $('input[name=search-masv]').val(),
                           mamh: $('input[name=search-mamh]').val(),

                       };
                    }
                },
                columns: [
                    {data: 'rownum', name: 'rownum'},
                    {data: 'masv', name: 'masv'},
                    {data: 'hotensv', name: 'hotensv'},
                    {data: 'malop', name: 'malop'},
                    {data: 'mamon', name: 'mamon'},
                    {data: 'diemcc', name: 'diemcc'},
                    {data: 'diemtx', name: 'diemtx'},
                    {data: 'diemgk', name: 'diemgk'},
                    {data: 'diemck', name: 'diemck'},
                    {data: 'lydo', name: 'lydo'},
                ],
                 buttons: [
                        {
                            extend: 'excel',
                            text: 'Xuất excel',
                            title: 'Danh sách sinh viên học lại',
                            filename: 'danhsachsinhvienhoclai',
                            header: true,
                            footer: false,
                            className: 'btn btn-warning btn-flat',
                            exportOptions: {
                                columns: [0, 1, 2, 3, 4, 5, 6,7,8,9]
                            }
                        },
                        {
                            extend: 'pdf',
                            text: 'PDF',
                            title: 'Danh sách sinh viên học lại',
                            filename: 'danhsachsinhvienhoclai',
                            header: true,
                            footer: false,
                            className: 'btn btn-danger btn-flat',
                            exportOptions: {
                                columns: [0, 1, 2, 3, 4, 5, 6,7,8,9]
                            }
                        },
                        ],
                        initComplete : function () {
                        datatable.buttons().container()
                        .appendTo( $('.my-dt-buttons:eq(0)'));
                        },
                language: {
                    "lengthMenu": "Hiển thị _MENU_ bản ghi",
                    "zeroRecords": "Không có bản ghi nào được tìm thấy",
                    "emptyTable": "Không có bản ghi nào được hiển thị",
                    "processing": "Đang xử lý",
                    "search": "Tìm kiếm",
                    "paginate": {
                        "first": "Đầu tiên",
                        "last": "Cuối cùng",
                        "next": "<i class='fa fa-chevron-right' aria-hidden='true'></i>",
                        "previous": "<i class='fa fa-chevron-left' aria-hidden='true'></i>"
                    },
                    "info": "Trình bày _START_ - _END_ trong số _TOTAL_ mục",
                    "infoEmpty": "Trình bày 0 - 0 trong 0 mục"
                },
                lengthMenu: [
                    [-1],
                    ['all']
                ],
                drawCallback: function () {
                }
            });
            datatable.on('draw', function () {
                $('.btn-edit').on('click', function () {
                    var url = $(this).data('detail');
                    var editUrl = $(this).data('url');
                    $('#frm_edit_student').attr('action', editUrl);
                    $.get(url, function (resp) {
                        console.log(resp);
                        $("#edit_hosv").val(resp.hosv);
                        $("#edit_tensv").val(resp.tensv);
                        $("#edit_gioitinh").val(resp.gioitinh);
                        $("#edit_ngaysinh").val(resp.ngaysinh);
                        $("#edit_quequan").val(resp.quequan);
                        $("#edit_ngaysinh").val(resp.ngaysinh);
                        $("#edit_lop").val(resp.lop_id).trigger('change');
                    }, 'json');
                });
            });
        });
    </script>
@stop
