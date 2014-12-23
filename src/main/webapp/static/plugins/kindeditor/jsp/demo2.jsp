<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";
%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>KindEditor JSP</title>
	<link rel="stylesheet" href="../themes/default/default.css" />
	<link rel="stylesheet" href="../plugins/code/prettify.css" />
	<script charset="utf-8" src="../kindeditor.js"></script>
	<script charset="utf-8" src="../lang/zh_CN.js"></script>
	<script charset="utf-8" src="../plugins/code/prettify.js"></script>
	<script charset="utf-8" src="jquery-1.6.2.min.js"></script>
	
		<style>
			.img{ width: 100px;height: 70px; border: 1px #ccc solid; margin-right: 10px;}
		</style>
</head>
<body>
	<%=htmlData%>
	<input type="button" id="J_selectImage" value="批量上传" />
	<input type="text" size="100" id="inputimgurl" name="myimgurl" value="/Demo1/attached/image/20131127/20131127133354_139.png,/Demo1/attached/image/20131127/20131127133354_752.png"/>
	<div id="divimgurl"></div>
	
	<input type="button" id="J_selectImage2" value="批量上传" />
	<input type="text" size="100" id="inputimgurl2" name="myimgurl" value="/Demo1/attached/image/20131127/20131127133354_139.png,/Demo1/attached/image/20131127/20131127133354_752.png"/>
	<div id="divimgurl2"></div>
	<script>
		/* J_selectImage:上传按钮ID
			 inputimgurl:图片url输入框ID
		 	   divimgurl:图片显示区域ID
		 	         ISID:图片所属显示区域ID(在图片中)
		*/
		KindEditor.ready(function(K) {
			var editor = K.editor({
				uploadJson : '../jsp/upload_json.jsp',
				allowFileManager : true
				 
			});
			K('#J_selectImage').click(function() {
				editor.loadPlugin('multiimage', function() {
					lp('inputimgurl','divimgurl');
				});
			});
			
			K('#J_selectImage2').click(function() {
				editor.loadPlugin('multiimage', function() {
					lp('inputimgurl2','divimgurl2');
				});
			});
			
			// 1、img inputId 2、图片显示区域id 
			function lp(inputIdOfImgurl,imgDivId){
				editor.plugin.multiImageDialog({
						clickFn : function(urlList) {
							var imgurl=K('#'+imgDivId);
							var imgurlStr=K('#'+inputIdOfImgurl);
							K.each(urlList, function(i, data) {
								imgurl.append('<img class="img" ISID="'+inputIdOfImgurl+'" onclick="removeImg(this)" src="' +data.url+ '"/>');
								imgurlStr.val(imgurlStr.val()+","+data.url);
							});
							editor.hideDialog();
						}
					});
			}
		
		});

		showImg('inputimgurl','divimgurl');
		showImg('inputimgurl2','divimgurl2');
		
		//加载图片
		function showImg(inputIdOfImgurl,imgDivId){
			var imgurlStr=$("#"+inputIdOfImgurl).val();
			var imgs=imgurlStr.split(",");
			for(var i=0;i<imgs.length;i++){
				$("#"+imgDivId).append('<img class="img" ISID="'+inputIdOfImgurl+'" onclick="removeImg(this)" src="' + imgs[i] + '"/>');
			}
		}
		//移除图片
		function removeImg(obj){
			obj.parentNode.removeChild(obj);
			var ISID=$(obj).attr("ISID");
			var imgurls=[];
			imgurls=$("#"+ISID).val().split(",");
			for(var k=0;k<imgurls.length;k++){
				if(imgurls[k]==$(obj).attr("src")){
					imgurls.splice(k, 1);
				}
			}
			$("#"+ISID).val(imgurls.join(","));
		}
		
		
		
		
	</script>
</body>
</html>
 