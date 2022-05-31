<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao"%>
<%@ page import="com.javaex.vo.GuestbookVo"%>
<%@ page import="java.util.List"%>

<%
GuestbookDao gbDao = new GuestbookDao();
List<GuestbookVo> gbList = gbDao.getGbList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./add.jsp" method="post">
		<table border="1" width="480px">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="7" cols="61" name="content"></textarea></td>
			</tr>
			<tr>
				<td><button type="submit">확인</button></td>
			</tr>
		</table>
	</form>
	<br>

	<%
	for (int i = 0; i < gbList.size(); i++) {
	%>
	<form action="" method="post">
		<table border="1" width="480px">
			<tr>
				<td>[<%=gbList.get(i).getNo()%>]</td>
				<td><%=gbList.get(i).getName()%></td>
				<td><%=gbList.get(i).getRegDate()%></td>
				<td><a href="./deleteForm.jsp?no=<%=gbList.get(i).getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4"><%=gbList.get(i).getContent()%></td>
			</tr>
		</table>
		<br>
	</form>
	<%
	}
	%>
</body>
</html>