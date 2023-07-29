<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - Toastr通知</title>

    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=3.2.0" rel="stylesheet">
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="row">
        <div class="col-lg-12">
            <div class="wrapper wrapper-content">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Toastr示例</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="toastr_notifications.jsp#">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li><a href="toastr_notifications.jsp#">设置选项1</a>
                                        </li>
                                        <li><a href="toastr_notifications.jsp#">设置选项2</a>
                                        </li>
                                    </ul>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content">

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="title">标题</label>
                                            <input id="title" type="text" class="form-control" placeholder="请输入标题...">
                                        </div>
                                        <div class="form-group">
                                            <label for="message">消息</label>
                                            <textarea class="form-control" id="message" rows="3" placeholder="请输入消息..."></textarea>
                                        </div>
                                        <div class="checkbox">
                                            <label class="checkbox" for="closeButton">
                                                <input id="closeButton" type="checkbox" value="checked" class="input-mini" checked="">关闭按钮
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label class="checkbox" for="addBehaviorOnToastClick">
                                                <input id="addBehaviorOnToastClick" type="checkbox" value="checked" class="input-mini">添加Toast单击行为
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label class="checkbox" for="debugInfo">
                                                <input id="debugInfo" type="checkbox" value="checked" class="input-mini">Debug
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label class="checkbox" for="progressBar">
                                                <input id="progressBar" type="checkbox" value="checked" class="input-mini" checked="">进度条
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label class="checkbox" for="preventDuplicates">
                                                <input id="preventDuplicates" type="checkbox" value="checked" class="input-mini">防止重复
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group" id="toastTypeGroup">
                                            <label>Toast类型</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="toasts" value="success" checked="">成功
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label class="radio">
                                                    <input type="radio" name="toasts" value="info">信息
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label class="radio">
                                                    <input type="radio" name="toasts" value="warning">警告
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label class="radio">
                                                    <input type="radio" name="toasts" value="error">错误
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group" id="positionGroup">
                                            <label>Position</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="positions" value="toast-top-right" checked="">右上
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="positions" value="toast-bottom-right">右下
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="positions" value="toast-bottom-left">左下
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="positions" value="toast-top-left">左上
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="positions" value="toast-top-full-width">顶部全宽
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="positions" value="toast-bottom-full-width">底部全宽
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="positions" value="toast-top-center">顶部居中
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="positions" value="toast-bottom-center">底部居中
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="showEasing">显示动画</label>
                                            <input id="showEasing" type="text" placeholder="swing, linear" class="form-control" value="swing">
                                        </div>
                                        <div class="form-group">

                                            <label for="hideEasing">隐藏动画</label>
                                            <input id="hideEasing" type="text" placeholder="swing, linear" class="form-control" value="linear">
                                        </div>
                                        <div class="form-group">

                                            <label for="showMethod">显示方法</label>
                                            <input id="showMethod" type="text" placeholder="show, fadeIn, slideDown" class="form-control" value="fadeIn">
                                        </div>
                                        <div class="form-group">

                                            <label for="hideMethod">隐藏方法</label>
                                            <input id="hideMethod" type="text" placeholder="hide, fadeOut, slideUp" class="form-control" value="fadeOut">
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="showDuration">显示持续时间</label>
                                            <input id="showDuration" type="text" placeholder="ms" class="form-control" value="400">
                                        </div>
                                        <div class="form-group">
                                            <label for="hideDuration">隐藏持续时间</label>
                                            <input id="hideDuration" type="text" placeholder="ms" class="form-control" value="1000">
                                        </div>
                                        <div class="form-group">
                                            <label for="timeOut">超时</label>
                                            <input id="timeOut" type="text" placeholder="ms" class="form-control" value="7000">
                                        </div>
                                        <div class="form-group">
                                            <label for="extendedTimeOut">延长时间</label>
                                            <input id="extendedTimeOut" type="text" placeholder="ms" class="form-control" value="1000">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <button type="button" class="btn btn-primary" id="showtoast">显示Toast</button>
                                        <button type="button" class="btn btn-white" id="cleartoasts">清除所有Toast</button>
                                        <button type="button" class="btn btn-white" id="clearlasttoast">清除最后一个Toast</button>
                                        <button type="button" class="btn btn-white" id="showsimple">显示简单设置</button>
                                    </div>
                                </div>

                                <div class="row m-t-lg">
                                    <div class="col-lg-12">
                                        <small>Toastr JSON设置</small>
                                        <pre id="toastrOptions" class="p-m">Command: toastr[success]("Hi, welcome to hplus. This is example of Toastr notification box.")

toastr.options = {
  "closeButton": true,
  "debug": true,
  "progressBar": false,
  "positionClass": "toast-top-right",
  "showDuration": "400",
  "hideDuration": "1000",
  "timeOut": "7000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}</pre>
                                    </div>
                                </div>

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


    <!-- Toastr script -->
    <script src="js/plugins/toastr/toastr.min.js"></script>

    <script type="text/javascript">
        $(function(){var c=-1;var e=0;var a;var d=function(){var f="Hi, welcome to Inspinia. This is example of Toastr notification box.";return f};$("#showsimple").click(function(){toastr.success("Without any options","Simple notification!")});$("#showtoast").click(function(){var f=$("#toastTypeGroup input:radio:checked").val();var g=$("#message").val();var q=$("#title").val()||"";var n=$("#showDuration");var k=$("#hideDuration");var j=$("#timeOut");var i=$("#extendedTimeOut");var l=$("#showEasing");var h=$("#hideEasing");var p=$("#showMethod");var o=$("#hideMethod");var m=e++;toastr.options={closeButton:$("#closeButton").prop("checked"),debug:$("#debugInfo").prop("checked"),progressBar:$("#progressBar").prop("checked"),positionClass:$("#positionGroup input:radio:checked").val()||"toast-top-right",onclick:null};if($("#addBehaviorOnToastClick").prop("checked")){toastr.options.onclick=function(){alert("You can perform some custom action after a toast goes away")}}if(n.val().length){toastr.options.showDuration=n.val()}if(k.val().length){toastr.options.hideDuration=k.val()}if(j.val().length){toastr.options.timeOut=j.val()}if(i.val().length){toastr.options.extendedTimeOut=i.val()}if(l.val().length){toastr.options.showEasing=l.val()}if(h.val().length){toastr.options.hideEasing=h.val()}if(p.val().length){toastr.options.showMethod=p.val()}if(o.val().length){toastr.options.hideMethod=o.val()}if(!g){g=d()}$("#toastrOptions").text("Command: toastr["+f+']("'+g+(q?'", "'+q:"")+'")\n\ntoastr.options = '+JSON.stringify(toastr.options,null,2));var r=toastr[f](g,q);a=r;if(r.find("#okBtn").length){r.delegate("#okBtn","click",function(){alert("you clicked me. i was toast #"+m+". goodbye!");r.remove()})}if(r.find("#surpriseBtn").length){r.delegate("#surpriseBtn","click",function(){alert("Surprise! you clicked me. i was toast #"+m+". You could perform an action here.")})}});function b(){return a}$("#clearlasttoast").click(function(){toastr.clear(b())});$("#cleartoasts").click(function(){toastr.clear()})});
    </script>

    <script type="text/javascript" src="../../../tajs.qq.com/stats@sId=9051096.jsp" charset="UTF-8"></script>
    <!--统计代码，可删除-->
</body>

</html>