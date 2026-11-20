<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../include/title.jsp" />

<link href="./res/css/member/signup_form.css" rel="stylesheet" type="text/css">

<jsp:include page="../include/member/member.jsp" />

</head>
<body>

	<jsp:include page="../include/header.jsp" />

	<jsp:include page="../include/nav.jsp" />
	
	<article>
		<div class="article_wrap">
			
			<form 
				action="<%= request.getContextPath() %>/signup_confirm.mem" 
				name="signup_form" 
				method="POST">
				
				*<input class="basic_input" type="text" name="memId" placeholder="Input new member ID!!">
				<br> 
				*<input class="basic_input" type="password" name="memPw" placeholder="Input new member PW!!">
				<br> 
				<input class="basic_input" type="email" name="memMail" placeholder="Input new member MAIL!!">
				<br> 
				<input class="basic_input" type="text" name="memPhone" placeholder="Input new member PHONE!!">
				<br>
				<input class="basic_input_button" type="button" value="SIGN UP" onclick="signupForm();">
				<input class="basic_input_button" type="reset" value="RESET">
			</form>
			
		</div>
	</article>
	
	<jsp:include page="../include/footer.jsp" />

</body>
</html>