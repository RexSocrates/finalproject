<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>通貨商進貨管理系統</title>

<!-- Bootstrap Core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link href="resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="resources/vendor/morrisjs/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<link href="resources/dist/css/style.css" rel="stylesheet"
	type="text/css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div id="wrapper">

		<%@include file="navbar.jspf"%>
		
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">商品清單</h1>
                </div>
                
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="col-lg-2">
                                <h4>所有商品</h4>
                            </div>
                            <div class="col-lg-8"></div>
                            <button class="btn btn-default" data-toggle="modal" data-target="#myModal" style="margin-left: 70px">新增商品</button>
                        </div>
                        
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-search">
                                <thead>
                                    <tr>
                                        <th style="width: 25px">id</th>
                                        <th>名稱</th>
                                        <th>價格</th>
                                        <th>廠商</th>
                                        <th>庫存</th>
                                        <th>狀態</th>
                                        <th style="width: 104px">動作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeA">
                                        <td>001</td>
                                        <td><p class="hideOverflow">Apple Lightning 8pin 原廠USB傳輸線</p></td>
                                        <td>$349</td>
                                        <td>Apple</td>
                                        <td>89</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModalChange">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>002</td>
                                        <td><p class="hideOverflow">PETON USB3.1 Type-C 金屬色編織高速傳輸充電線(1M) </p></td>
                                        <td>$190</td>
                                        <td class="center">TTTTTT</td>
                                        <td>78</td>
                                        <td class="center">斷貨</td>
                                        <td>
                                            <button type="button" class="btn btn-info">供貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>003</td>
                                        <td><p class="hideOverflow">ADATA Aluminum Lightning 編織充電傳輸線（玫瑰金）</p></td>
                                        <td>$490</td>
                                        <td class="center">ADATA</td>
                                        <td>520</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>004</td>
                                        <td><p class="hideOverflow">3DS USB充電線</td>
                                        <td>$190</td></td>
                                        <td class="center">ONPRO</td>
                                        <td>43</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>005</td>
                                        <td><p class="hideOverflow">Micro USB 橘色閃電 快速充電線 </p></td>
                                        <td>$240</td>
                                        <td class="center">HTC</td>
                                        <td>200</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>006</td>
                                        <td><p class="hideOverflow">PowerFalcon Quick Charge 2.0 4Port快速充電器25W</p></td>
                                        <td>$799</td>
                                        <td class="center">SONY</td>
                                        <td>75</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>007</td>
                                        <td><p class="hideOverflow">FLIR ONE 紅外線熱感應鏡頭 熱成像鏡頭 ANDROID 系統用</p></td>
                                        <td>$9800</td>
                                        <td class="center">FLIR</td>
                                        <td>30</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>008</td>
                                        <td><p class="hideOverflow">Chromecast HDMI 媒體串流播放器</p></td>
                                        <td>$1390</td>
                                        <td class="center">Google</td>
                                        <td>70</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>009</td>
                                        <td><p class="hideOverflow">美瞳手機自拍神器美顏補光燈RK12電池款環形手機燈</td>
                                        <td>$299</td></td>
                                        <td class="center">ONPRO</td>
                                        <td>65</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>010</td>
                                        <td><p class="hideOverflow">APPLE IPHONE lightning 磁吸轉接頭</p></td>
                                        <td>$459</td>
                                        <td class="center">ONPRO</td>
                                        <td>10</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>011</td>
                                        <td><p class="hideOverflow">SONY 藍牙立體聲喇叭 BSP10</td>
                                        <td>$2747</td></td>
                                        <td class="center">SONY</td>
                                        <td>35</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>012</td>
                                        <td><p class="hideOverflow">GoPro HERO5 Black</td>
                                        <td>$15500</td></td>
                                        <td class="center">GoPro</td>
                                        <td>100</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>013</td>
                                        <td><p class="hideOverflow">Twelve South HiRise Deluxe 2 iPhone 充電立架 -銀色</p></td>
                                        <td>$1940</td>
                                        <td class="center">Twelve South</td>
                                        <td>60</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>014</td>
                                        <td><p class="hideOverflow">Twelve South BookBook iPhone 6/6S Plus 復古書仿舊皮革保護套-棕色</p></td>
                                        <td>$1980</td>
                                        <td class="center">Twelve South</td>
                                        <td>73</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>015</td>
                                        <td><p class="hideOverflow">Twelve South Compass 2 立架 - 金色</p></td>
                                        <td>$1490</td>
                                        <td class="center">Twelve South</td>
                                        <td>90</td>
                                        <td>供貨中</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">斷貨</button>
                                            <button type="button" class="btn btn-warning">修改</button>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
            </div>
            <!-- /.row -->
            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">新增商品</h4>
                        </div>
                        <form role="form" action="productList">
                            <div class="modal-body">
                                    <div class="form-group">
                                        <label>商品名稱</label>
                                        <input class="form-control" placeholder="輸入商品名稱" required="required">
                                    </div>
                                    <div class="form-group">
                                        <label>商品價格</label>
                                        <input class="form-control" placeholder="輸入商品價格" required="required">
                                    </div>
                                    <div class="form-group">
                                        <label>選擇廠商</label>
                                        <select class="form-control">
                                            <option value="1">Apple</option>
                                            <option value="2">Sony</option>
                                            <option value="3">HTC</option>
                                            <option value="4">ADATA</option>
                                            <option value="5">ONPRO</option>
                                        </select>
                                    </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.panel-heading -->

            <!-- Modal -->
            <div class="modal fade" id="myModalChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">新增商品</h4>
                        </div>
                        <form role="form" action="productList">
                            <div class="modal-body">
                                    <div class="form-group">
                                        <label>商品名稱</label>
                                        <input class="form-control" placeholder="輸入商品名稱" value="Apple Lightning 8pin 原廠USB傳輸線" required="required">
                                    </div>
                                    <div class="form-group">
                                        <label>商品價格</label>
                                        <input class="form-control" placeholder="輸入商品價格" value="349" required="required">
                                    </div>
                                    <div class="form-group">
                                        <label>選擇廠商</label>
                                        <select class="form-control">
                                            <option value="1">Apple</option>
                                            <option value="2">Sony</option>
                                            <option value="3" selected="selected">HTC</option>
                                            <option value="4">ADATA</option>
                                            <option value="5">ONPRO</option>
                                        </select>
                                    </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.panel-heading -->
        </div>
        <!-- /#page-wrapper -->

	</div>

	<!-- jQuery -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="resources/vendor/raphael/raphael.min.js"></script>
	<script src="resources/vendor/morrisjs/morris.min.js"></script>
	<script src="resources/data/morris-data.js"></script>
    
    <!-- DataTables JavaScript -->
    <script src="resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="resources/dist/js/sb-admin-2.js"></script>

    <script>
    $(document).ready(function() {
        $('#dataTables-search').DataTable({
            responsive: true
        });
    });
    </script>

</body>
</html>
