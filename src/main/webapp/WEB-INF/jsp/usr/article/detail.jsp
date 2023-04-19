<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" value="게시물 상세" />
<%@ include file="../common/head.jspf" %>
	
<hr/>

<section class="mt-5">
	<table border="1">
		<tbody>
			<tr>
				<th>글 번호</th>
				<td>${article.id }</td>
			</tr>
			<tr>
				<th>작성날자</th>
				<td>${article.regDate.substring(2,16) }</td>
			</tr>
			<tr>
				<th>수정날자</th>
				<td>${article.updateDate.substring(2,16) }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${article.memberId }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${article.title }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${article.body }</td>
			</tr>
		</tbody>
	</table>

<div type="button"><button onclick="history.back();">뒤로가기</button></div>

</section>

				
				
	
	
<%@ include file="../common/foot.jspf" %>