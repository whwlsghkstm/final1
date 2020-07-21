<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>전시회</title>
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<style>
	.box {padding:10px; margin:auto; border:2px dashed black;}
	</style>
</head>
<body>
	<jsp:include page="../menu.jsp"/>
	<h1>전시회 목록</h1>
	<div style="width: 425px; background: white;">
		<c:forEach items="${list}" var="vo">
			<div class="box">
				<input type="hidden" value="${vo.e_no}" class="e_no">
				<div>
					<img src="${vo.image}">
				</div>
				<br>
				<div>제목 :${vo.title}</div>
				<br>
				<div>내용 :${vo.date}</div>
				<br>
				<div>장소 :${vo.addr_detail}</div>				
			</div>
			<br>
		</c:forEach>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
<script>
	var e_no="${vo.e_no}";
	
	$(".box").on("click",function(e){
		e.preventDefault();
		var e_no= $(this).find(".e_no").val();
		location.href="read?e_no="+e_no;
	});

</script>
</html>