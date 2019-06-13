<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>
<style>
table {
	border: 1px solid black;
	width: 60%;
	margin: 0 auto;
	font-size: 160%;
}

tr {
	text-align: center;
}

td {
	border: 1px solid black;
	margin: 10px;
	padding-top: 10px;
}

#id{
	text-decoration: underline;
	color: #345ddd;
}
</style>
<!-- section -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- section-title -->
			<div class="col-md-12">
				<div class="section-title">
					<h2 class="title">MEMBER LIST(ADMIN)</h2>
				</div>
			</div>

			<table>
				<tr>
					<td><h3>ID</h3></td>
					<td><h3>NAME</h3></td>
				</tr>
				<c:forEach var="mem" items="${list }">
					<tr>
						<td><a id="id" href="/admin/memberview?id=${mem.id}">${mem.id }</a></td>
						<td>${mem.name }</td>
					</tr>
				</c:forEach>
			</table>

		</div>
		<!-- /row -->

	</div>
	<!-- /container -->


</div>
<!-- /section -->

<%@include file="../includes/footer.jsp"%>