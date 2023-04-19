<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" value="게시물 상세" />
<%@ include file="../common/head.jspf" %>
	
<hr/>

<section class="mt-5">
	<table border="1">
		<tbody style="text-align:left;">
			<tr>
				<th>글 번호 </th>
				<td>&nbsp;${article.id }</td>
			</tr>
			<tr>
				<th>작성날자 </th>
				<td>&nbsp;${article.regDate.substring(2,16) }</td>
			</tr>
			<tr>
				<th>수정날자 </th>
				<td>&nbsp;${article.updateDate.substring(2,16) }</td>
			</tr>
			<tr>
				<th>작성자 </th>
				<td>&nbsp;${article.memberId }</td>
			</tr>
			<tr>
				<th>제목 </th>
				<td>&nbsp;${article.title }</td>
			</tr>
			<tr>
				<th>내용 </th>
				<td>&nbsp;${article.body }</td>
			</tr>
		</tbody>
	</table>

<div type="button"><button onclick="history.back();">뒤로가기</button></div>

</section>

				
				
	
	
<%@ include file="../common/foot.jspf" %>