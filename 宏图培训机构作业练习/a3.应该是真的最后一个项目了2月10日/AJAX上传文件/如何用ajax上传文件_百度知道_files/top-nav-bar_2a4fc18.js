define("question:widget/top-nav-bar/top-nav-bar.js",function(e,t,a){{var n=e("common:widget/js/util/tangram/tangram.js"),o=e("common:widget/js/ui/suggestion/suggestion.js"),i=e("common:widget/js/util/event/event.js"),s=e("common:widget/js/util/form/form.js"),r=e("common:widget/js/util/log/log.js");e("common:widget/js/ui/dialog/dialog.js")}e("common:widget/lib/jquery.placeholder/jquery.placeholder.js");var c=(new o({target:"#nav-kw",beforeinit:function(){try{this.checkDisabled=function(){return"1"==n.cookie.get("IK_SUG")}}catch(e){"undefined"!=typeof alog&&alog("exception.fire","catch",{msg:e.message,path:"question:widget/top-nav-bar/top-nav-bar.js",method:"",ln:22})}},open:function(){var e=n(this.target).autocomplete("widget"),t=n.trim(n(this.target).val());0==e.find(".ui-menu-item-close").size()&&(n("<li>").addClass("ui-menu-item-close").html('<a href="#">\u5173\u95ed</a>').appendTo(e),e.find(".ui-menu-item a").each(function(){n(this).html(this.innerHTML.replace(new RegExp(t,"i"),function(e){return"<em>"+e+"</em>"}))}))},create:function(){var e=this,t=n(e.target).autocomplete("widget");t.delegate(".ui-menu-item-close a","click",function(t){try{t.preventDefault(),n(e.target).autocomplete("close").autocomplete("destroy"),n.cookie.set("IK_SUG","1")}catch(t){"undefined"!=typeof alog&&alog("exception.fire","catch",{msg:t.message,path:"question:widget/top-nav-bar/top-nav-bar.js",method:"",ln:44})}})},select:function(e,t){c.val(t.item.value),i.fire("searchBox.addLog",{f:"sug"}),a.exports.search(c)}}),n("#nav-kw")),l=n.json.parse(F.context("defaultQuery")),u=n(window);r.init({type:8888,action:"click",query:".channel"}),n(window).on("load resize scroll",function(){var e=u.scrollTop();e>135&&n("#top-nav-bar").fadeIn(),135>e&&n("#top-nav-bar").fadeOut()}),n("#search-nav-form").submit(function(e){r.send({type:2014,pms:"newqb",action:"searchbtn-nav"}),e.preventDefault(),a.exports.search(c)}),n("#ask-nav-btn").click(function(e){try{r.send({type:2014,pms:"newqb",action:"askbtn-nav"}),e.preventDefault(),a.exports.ask(c)}catch(e){"undefined"!=typeof alog&&alog("exception.fire","catch",{msg:e.message,path:"question:widget/top-nav-bar/top-nav-bar.js",method:"",ln:92})}}),a.exports.search=function(e){e=n(e);var t=n.string(e.val()).trim();l&&(t=t==l.title?l.value:t),""==t?i.fire("searchBox.buttonAction",{text:"\u8bf7\u8f93\u5165\u60a8\u8981\u641c\u7d22\u7684\u95ee\u9898",evtName:"searchAction",log:"btn=search",fr:"search_0"}):i.fire("searchBox.searchAction",{params:{word:t},extParams:n.url.queryToJson(e.attr("extAttr")||"")})},a.exports.ask=function(e){e=n(e);var t=!l||e.val()!=l.title&&e.val()!=l.value?e.val():"",a=new s({method:"get",action:"/new",input:{word:t,ie:"GBK"}});setTimeout(function(){a.submit()},60)}});