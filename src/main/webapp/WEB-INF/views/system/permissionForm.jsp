<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<%@ include file="/WEB-INF/views/include/easyui.jsp"%>
</head>
<body>
<div>
	<form id="mainform" action="${ctx}/system/permission/${action}" method="post">
	<table  class="formTable">
		<tr>
			<td>权限名称：</td>
			<td>
				<input type="hidden" name="id" value="${permission.id }"/>
				<input id="name" name="name" type="text" value="${permission.name }" class="easyui-validatebox" data-options="width: 150,required:'required',validType:'length[2,20]'"/>
			</td>
		</tr>
		<tr>
			<td>权限类型：</td>
			<td>
				<select id="type" name="type">   
				    <option value="F">菜单</option>   
				    <option value="O">操作</option>   
				</select>  
			</td>
		</tr>
		<tr>
			<td>权限编码：</td>
			<td>
				<input id="permCode" name="permCode" type="text" class="easyui-validatebox"  data-options="width: 150" value="${permission.permCode }" />
			</td>
		</tr>
		<tr>
			<td>访问路径：</td>
			<td><input id="url" name="url" type="text" value="${permission.url }" class="easyui-validatebox"  data-options="width: 150" class="easyui-validatebox"/></td>
		</tr>
		<tr>
			<td>菜单图标：</td>
			<td>
				<select id="icon" name="icon" class="easyui-comboicons" data-options="width: 150, autoShowPanel: false, multiple: false, size: '16', value: '${permission.icon }'"></select>
			</td>
		</tr>
		<tr>
			<td>上级菜单：</td>
			<td><input id="pid" name="pid" value="${permission.pid }"/></td>
		</tr>
		<tr>
			<td>顺序：</td>
			<td><input id="sort" type="text" name="sort" value="${permission.sort }" class="easyui-numberbox" data-options="width: 150" /></td>
		</tr>
		<tr>
			<td>描述：</td>
			<td><textarea rows="3" cols="31" name="description">${permission.description}</textarea></td>
		</tr>
	</table>
	</form>
</div> 
<script type="text/javascript">
//父级权限
var action="${action}";
if(action=='create'){
	$('#pid').val(parentPermId);
}else if(action=='update'){
	$('#pid').val(parentPermId);
}

//菜单类型
$('#type').combobox({  
	width:150,
	panelHeight:50,  
	onLoadSuccess:function(){
		if("${permission.type}"==""||"${permission.type}"=="F"){
			$('#type').combobox('setValue','F');
			$("#permCode").attr("readonly",true);
			$("#permCode").css("background","#eee");
		}
		if("${permission.type}"=="O"){
			$('#type').combobox('setValue','${permission.type}');
			$("#sort,#url").attr("readonly",true);
			$("#sort,#url").css("background","#eee");
		}
	},
	onSelect:function(data){
		//选择菜单就把访问路径禁用
		if(data.value=='F'){
			$("#permCode").attr("readonly",true);
			$("#permCode").css("background","#eee");
			$("#sort,#url").attr("readonly",false);
			$("#sort,#url").css("background","");
			
			$('#sort').numberbox('enable');
		}
		if(data.value=='O'){
			$("#sort,#url").attr("readonly",true);
			$("#sort,#url").css("background","#eee");
			$("#permCode").attr("readonly",false);
			$("#permCode").css("background","");
			
			$('#sort').numberbox('disable');
		}
	}
});  

//上级权限
$('#pid').combotree({
	width:150,
	method:'GET',
    url: '${ctx}/system/permission/json',
    idField : 'id',
    textFiled : 'name',
	parentField : 'pid',
	iconCls: 'icon',
    animate:true
});  

$('#mainform').form({    
    onSubmit: function(){    
    	var isValid = $(this).form('validate');
		return isValid;	// 返回false终止表单提交
    },    
    success:function(data){   
    	if(data=='success'){
	    	dg.treegrid('reload');
			d.panel('close');
			parent.$.messager.show({ title : "提示",msg: "操作成功！", position: "bottomRight" });
    	}
    }    
});   


</script>
</body>
</html>