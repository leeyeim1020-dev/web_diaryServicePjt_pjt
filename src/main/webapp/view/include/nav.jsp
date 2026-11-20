<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<link href="./res/css/include/nav.css" rel="stylesheet" type="text/css">    

<nav>
	<div class="nav_wrap">
		<a href="${pageContext.request.contextPath}/">HOME</a>
		
		<c:choose>
			
			<c:when test="${empty sessionScope.signinedMemberId}">
				<a href="${pageContext.request.contextPath}/signup_form.mem">SIGN-UP</a>
				<a href="${pageContext.request.contextPath}/signin_form.mem">SIGN-IN</a>
			</c:when>
			
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/signout_confirm.mem">SIGN-OUT</a>
				<a href="${pageContext.request.contextPath}/diary_write_form.dir">DIARY_WRITE</a>
				<a href="${pageContext.request.contextPath}/diary_list.dir">DIARY_LIST</a>
			</c:otherwise>
			
		</c:choose>
		
		
	</div>
</nav>