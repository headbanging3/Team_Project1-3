<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	table, th, td{
		border:1px solid #000;
	}
	img{
		height:100px;
		width:100px;
	}
	.productsCud {
		padding : 20px;
	}
	.productsCud a{
		margin-right:30px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="productsCud">
	<a href="p_insertform.do">상품 등록</a>
	<a href="manager/products/p_updateform.do">상품 수정</a>
	<a href="manager/products/p_delete.do">상품 삭제</a>
</div>
<table>
	<thead>
		<tr>
		<!-- 상품 -->
			<th>상품코드</th>
			<th>분류코드</th>
			<th>상품명</th>
			<th>제조사</th>
			<th>판매가</th>
			<th>마일리지</th>
			<th>등록일자</th>
			<th>상품간단설명</th>
			<th>상품상세설명</th>
			<th>상품 이미지</th>
		<!-- 상품 상세 -->
			<th>상품번호</th>
			<th>사이즈</th>
			<th>재고수량</th>
		</tr>
	</thead>
	<tbody>
	<c:choose>
		<c:when test="${empty list }">
			<h3>상품이 없습니다.</h3>
		</c:when>	
		<c:otherwise>
			<c:forEach var="tmp" items="${list}">
				<tr>
				<!-- 상품 -->
					<td>${tmp.p_code}</td>
					<td>${tmp.p_kind_code }</td>
					<td>${tmp.p_name }</td>
					<td>${tmp.p_brand }</td>
					<td>${tmp.p_price }</td>
					<td>${tmp.point }</td>
					<td>${tmp.p_regdate }</td>
					<td>${tmp.p_comment }</td>
					<td>${tmp.p_detail_comment }</td>
					<td>
						<a href="products_detail.do?p_code=${tmp.p_code }">
							<img src="${pageContext.request.contextPath }/resources/img/${tmp.p_main_img }" />
						</a>
					</td>
					<td>상품번호(상품 상세)</td>
					<td>사이즈(상품 상세)</td>
					<td>수량(상품 상세)</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
	</tbody>
</table>
</body>
</html>