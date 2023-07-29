<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - 基本图库</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
    <link href="js/plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=3.2.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Fancybox <small>http://fancybox.net/</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="basic_gallery.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="basic_gallery.jsp#">选项1</a>
                                </li>
                                <li><a href="basic_gallery.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <a class="fancybox" href="img/p1.jpg" title="图片1">
                            <img alt="image" src="img/p_big1.jpg" />
                        </a>
                        <a class="fancybox" href="img/p2.jpg" title="图片2">
                            <img alt="image" src="img/p_big2.jpg" />
                        </a>
                        <a class="fancybox" href="img/p3.jpg" title="图片3">
                            <img alt="image" src="img/p_big3.jpg" />
                        </a>
                        <a class="fancybox" href="img/p1.jpg" title="图片4">
                            <img alt="image" src="img/p_big1.jpg" />
                        </a>
                        <a class="fancybox" href="img/p2.jpg" title="图片5">
                            <img alt="image" src="img/p_big2.jpg" />
                        </a>
                        <a class="fancybox" href="img/p3.jpg" title="图片6">
                            <img alt="image" src="img/p_big3.jpg" />
                        </a>
                        <a class="fancybox" href="img/p1.jpg" title="图片7">
                            <img alt="image" src="img/p_big1.jpg" />
                        </a>
                        <a class="fancybox" href="img/p2.jpg" title="图片8">
                            <img alt="image" src="img/p_big2.jpg" />
                        </a>
                        <a class="fancybox" href="img/p1.jpg" title="图片9">
                            <img alt="image" src="img/p_big1.jpg" />
                        </a>
                        <a class="fancybox" href="img/p2.jpg" title="图片10">
                            <img alt="image" src="img/p_big2.jpg" />
                        </a>
                        <a class="fancybox" href="img/p3.jpg" title="图片11">
                            <img alt="image" src="img/p_big3.jpg" />
                        </a>
                        <a class="fancybox" href="img/p1.jpg" title="图片12">
                            <img alt="image" src="img/p_big1.jpg" />
                        </a>
                        <a class="fancybox" href="img/p2.jpg" title="图片13">
                            <img alt="image" src="img/p_big2.jpg" />
                        </a>
                        <a class="fancybox" href="img/p3.jpg" title="图片14">
                            <img alt="image" src="img/p_big3.jpg" />
                        </a>
                        <a class="fancybox" href="img/p1.jpg" title="图片15">
                            <img alt="image" src="img/p_big1.jpg" />
                        </a>
                        <a class="fancybox" href="img/p2.jpg" title="图片16">
                            <img alt="image" src="img/p_big2.jpg" />
                        </a>


                    </div>
                </div>
            </div>

        </div>
    </div>


    <!-- 全局js -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js?v=3.4.0"></script>



    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>

    <!-- 自定义js -->
    <script src="js/content.min.js?v=1.0.0"></script>


    <!-- Fancy box -->
    <script src="js/plugins/fancybox/jquery.fancybox.js"></script>


    <script>
        $(document).ready(function () {
            $('.fancybox').fancybox({
                openEffect: 'none',
                closeEffect: 'none'
            });
        });
    </script>

    <script type="text/javascript" src="../../../tajs.qq.com/stats@sId=9051096.html" charset="UTF-8"></script>
    <!--统计代码，可删除-->

</body>

</html>