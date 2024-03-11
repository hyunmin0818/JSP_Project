<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty param.flag}">
		<c:if test="${not param.flag}">
			<script>
				alert("로그인 실패");
			</script>
		</c:if>
	</c:if>
	<form action="${pageContext.request.contextPath}/SubmitOk.ms" method="post">
                            <div class="input__item">
                                <input type="text" placeholder="userid" id="userid" name="userid">
                                <span class="icon_id"></span>
                            </div>
                            <div class="input__item">
                                <input type="password" placeholder="Password" id="userpw" name="userpw">
                                <span class="icon_lock"></span>
                            </div>
                            <button type="submit" >Login Now</button>
                            
                        </form>
                      
</body>
</html>