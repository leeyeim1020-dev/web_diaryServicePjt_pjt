<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../include/title.jsp" />

<link href="./res/css/member/signup_form.css" rel="stylesheet" type="text/css">

<jsp:include page="../include/diary/diary.jsp" />

</head>
<body>

	<jsp:include page="../include/header.jsp" />

	<jsp:include page="../include/nav.jsp" />
	
	<article>
		<div class="article_wrap">
			
			<form 
				action="<%= request.getContextPath() %>/write_confirm.dir" 
				name="write_form" 
				method="POST">
				
				<input class="basic_input" type="text" name="diaryWord" placeholder="Input diary!!">
				<br> 
				<input class="basic_input_button" type="button" value="WRITE" onclick="writeForm();">
				<input class="basic_input_button" type="reset" value="RESET">
			</form>
			
		</div>
	</article>
	
	<jsp:include page="../include/footer.jsp" />

</body>
</html>