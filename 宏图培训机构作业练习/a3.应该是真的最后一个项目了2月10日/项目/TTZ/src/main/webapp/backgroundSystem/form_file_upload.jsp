<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - 文件上传</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="css/plugins/dropzone/dropzone.css" rel="stylesheet">
    <link href="css/style.min.css?v=3.2.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeIn">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>文件上传</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_file_upload.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_file_upload.jsp#">选项1</a>
                                </li>
                                <li><a href="form_file_upload.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form id="my-awesome-dropzone" class="dropzone" action="form_file_upload.jsp#">
                            <div class="dropzone-previews"></div>
                            <button type="submit" class="btn btn-primary pull-right">提交</button>
                        </form>
                        <div>
                            <div class="m"><small>DropzoneJS是一个开源库，提供拖放文件上传与图片预览：<a href="https://github.com/enyo/dropzone" target="_blank">https://github.com/enyo/dropzone</a></small>，百度前端团队提供的<a href="http://fex.baidu.com/webuploader/" target="_blank">Web Uploader</a>也是一个非常不错的选择，值得一试！</div>
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


    <!-- DROPZONE -->
    <script src="js/plugins/dropzone/dropzone.js"></script>


    <script>
        $(document).ready(function(){Dropzone.options.myAwesomeDropzone={autoProcessQueue:false,uploadMultiple:true,parallelUploads:100,maxFiles:100,init:function(){var a=this;this.element.querySelector("button[type=submit]").addEventListener("click",function(b){b.preventDefault();b.stopPropagation();a.processQueue()});this.on("sendingmultiple",function(){});this.on("successmultiple",function(c,b){});this.on("errormultiple",function(c,b){})}}});
    </script>

    <script type="text/javascript" src="../../../tajs.qq.com/stats@sId=9051096.html" charset="UTF-8"></script>
    <!--统计代码，可删除-->

</body>

</html>