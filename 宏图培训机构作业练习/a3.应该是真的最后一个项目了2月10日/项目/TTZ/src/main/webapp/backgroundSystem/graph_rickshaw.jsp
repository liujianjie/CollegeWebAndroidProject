<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">CTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - Rickshaw图表</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.3.0" rel="stylesheet">

    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=3.2.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>面积图 <small>自定义颜色</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="graph_rickshaw.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="graph_rickshaw.jsp#">选项1</a>
                                </li>
                                <li><a href="graph_rickshaw.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="chart" class="rickshaw_graph"></div>

                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>多面积图</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="graph_rickshaw.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="graph_rickshaw.jsp#">选项1</a>
                                </li>
                                <li><a href="graph_rickshaw.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="rickshaw_multi" class="rickshaw_graph"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>线性图</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="graph_rickshaw.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="graph_rickshaw.jsp#">选项1</a>
                                </li>
                                <li><a href="graph_rickshaw.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="rickshaw_line" class="rickshaw_graph"></div>

                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>多线性图</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="graph_rickshaw.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="graph_rickshaw.jsp#">选项1</a>
                                </li>
                                <li><a href="graph_rickshaw.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="rickshaw_multi_line" class="rickshaw_graph"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>柱状图</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="graph_rickshaw.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="graph_rickshaw.jsp#">选项1</a>
                                </li>
                                <li><a href="graph_rickshaw.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="rickshaw_bars" class="rickshaw_graph"></div>

                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>堆积柱状图</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="graph_rickshaw.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="graph_rickshaw.jsp#">选项1</a>
                                </li>
                                <li><a href="graph_rickshaw.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="rickshaw_bars_stacked" class="rickshaw_graph"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>散点图</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="graph_rickshaw.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="graph_rickshaw.jsp#">选项1</a>
                                </li>
                                <li><a href="graph_rickshaw.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="rickshaw_scatterplot" class="rickshaw_graph"></div>

                    </div>
                </div>
            </div>

        </div>

    </div>
    <!-- 全局js -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js?v=3.4.0"></script>



    <!-- Rickshaw -->
    <script src="js/plugins/rickshaw/vendor/d3.v3.js"></script>
    <script src="js/plugins/rickshaw/rickshaw.min.js"></script>

    <!-- 自定义js -->
    <script src="js/content.min.js?v=1.0.0"></script>


    <!-- Rickshaw demo data -->
    <script src="js/demo/rickshaw-demo.min.js"></script>

    <script type="text/javascript" src="../../../tajs.qq.com/stats@sId=9051096.html" charset="UTF-8"></script>
    <!--统计代码，可删除-->

</body>

</html>