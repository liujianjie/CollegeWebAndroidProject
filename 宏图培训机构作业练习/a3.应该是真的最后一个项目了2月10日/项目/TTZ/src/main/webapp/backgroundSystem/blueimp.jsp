<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - Blueimp相册</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
    <link href="css/plugins/blueimp/css/blueimp-gallery.min.css" rel="stylesheet">

    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=3.2.0" rel="stylesheet">

    <style>
        .lightBoxGallery img {
            margin: 5px;
            width: 160px;
        }
    </style>

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">

                    <div class="ibox-content">

                        <h2>相册插件</h2>
                        <p>
                            <strong>blueimp Gallery</strong>主要为移动设备而设计，同时也支持桌面浏览器。可定制视频和相片，支持触摸操作，支持全屏播放等。项目地址： <a href="https://github.com/blueimp/Gallery" target="_blank">https://github.com/blueimp/Gallery</a>
                        </p>

                        <div class="lightBoxGallery">
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>
                            <a href="img/p_big1.jpg" title="图片" data-gallery=""><img src="img/p1.jpg"></a>
                            <a href="img/p_big2.jpg" title="图片" data-gallery=""><img src="img/p2.jpg"></a>
                            <a href="img/p_big3.jpg" title="图片" data-gallery=""><img src="img/p3.jpg"></a>

                            <div id="blueimp-gallery" class="blueimp-gallery">
                                <div class="slides"></div>
                                <h3 class="title"></h3>
                                <a class="prev">‹</a>
                                <a class="next">›</a>
                                <a class="close">×</a>
                                <a class="play-pause"></a>
                                <ol class="indicator"></ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 全局js -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js?v=3.4.0"></script>

    <!-- 自定义js -->
    <script src="js/content.min.js?v=1.0.0"></script>

    <!-- blueimp gallery -->
    <script src="js/plugins/blueimp/jquery.blueimp-gallery.min.js"></script>

    <script type="text/javascript" src="../../../tajs.qq.com/stats@sId=9051096.html" charset="UTF-8"></script>
    <!--统计代码，可删除-->

</body>

</html>