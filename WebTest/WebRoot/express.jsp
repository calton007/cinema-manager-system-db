<%@page import="com.file.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加影评</title>
    
		<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-ui"></script>
<link href="http://www.francescomalagrino.com/BootstrapPageGenerator/3/css/bootstrap-combined.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/bootstrap.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<SCRIPT language=JavaScript>
<!--
var LastCount =0;
function CountStrByte(Message,Total,Used,Remain){ //字节统计
 var ByteCount = 0;
 var StrValue  = Message.value;
 var StrLength = Message.value.length;
 var MaxValue  = Total.value;
 if(LastCount != StrLength) { // 在此判断，减少循环次数
	for (i=0;i<StrLength;i++){
		ByteCount  = (StrValue.charCodeAt(i)<=256) ? ByteCount + 1 : ByteCount + 2;
      if (ByteCount>MaxValue) {
      	Message.value = StrValue.substring(0,i);
			alert("评论内容最多不能超过 " +MaxValue+ " 个字节！\n注意：一个汉字为两字节。");
         ByteCount = MaxValue;
         break;
      }
	}
   Used.value = ByteCount;
   Remain.value = MaxValue - ByteCount;
   LastCount = StrLength;
 }
}
//-->
</SCRIPT>
</head>

<body style="font-size:18px,background-color:Plum "  >

<% 
 User u=(User)session.getAttribute("user");
  System.out.println(session.getAttribute("user"));

  session.setAttribute("user", u);
  
  
  %>

<div class="container-fluid" style="background-color:LightGoldenRodYellow ">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						<a class="btn btn-navbar" data-target=".navbar-responsive-collapse" data-toggle="collapse"></a> <a class="brand" href="#">电影在线管理订单</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li >
									<a href=""></a>
								</li>
								<li>
									<a href=""></a>
								</li>
								<li>
									<a href=""></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
<table border="1" align="center" cellpadding="10" cellspacing="10" >
 <tr>
    <td>&nbsp;</td>
    <td align="center" valign="middle"><table width="95%" border="0" cellspacing="0" cellpadding="0">
      <form name="form1" action="express?uid=<%=u.getId() %>" method="post">
      <tr>
          <td width="23%" height="22" align="right" class="font2">评论电影的序号</td>
          <td width="77%" height="22" align="left"><input name="fid" type="text" class="textbox" id="fid" /></td>
        </tr>
        <tr>
          <td width="23%" height="22" align="right" class="font2">电影名称</td>
          <td width="77%" height="22" align="left"><input name="name" type="text" class="textbox" id="name" /></td>
        </tr>
        <tr>
          <td height="22" align="right" class="font2">描述信息：</td>
          <td height="22" align="left"><textarea name="express" cols="45" rows="5" id="express" onKeyDown="CountStrByte(this.form.评论内容,this.form.total,this.form.used,this.form.remain);" onKeyUp="CountStrByte(this.form.评论内容,this.form.total,this.form.used,this.form.remain);"></textarea>
              <br />
        最多允许
        <input name="total" type="text" disabled class="textbox" id="total"  value="100" size="3">
        个字节 
          </td>
        </tr>
        <tr>
          <td height="22">&nbsp;</td>
          <td height="22" align="left"><input name="add" type="submit" class="button" id="add" value="提 交" />
         </td>
        </tr>
      </form>
    </table>
    </td>
  </tr>
  <tr>
    <td height="100">&nbsp;</td>
    <td height="100">&nbsp;</td>
  </tr>
</table>
<br>

<br>
<br>
<br>
<br>			
		</div>
	</div>
</div>
</body>
</html>
