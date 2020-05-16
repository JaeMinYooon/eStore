<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<div class="container-wrapper">
	<div class="container">
		<h1>Product Detail</h1>
		<p class="lead">Here is the detail information of the product!</p>
		<div class="row">
			<div class="col-md-6">
				<c:set var="imageFilename"
					value="/resources/images/${product.id}.jpg" />
				<img src="<c:url value="${imageFilename}" />" alt="image"
					style="width: 80%" />

			</div>
			<div class="col-md-6">
				<h3>${product.name}</h3>
				<p>
					<strong style="color: #52A4E4"> Description : </strong>
					${product.description}
				</p>
				<p>
					<strong style="color: #52A4E4"> Manufacturer : </strong>
					${product.manufacturer}
				</p>
				<p>
					<strong style="color: #52A4E4"> Category : </strong>
					${product.category}
				</p>
				<h3>${product.price}원</h3>
			</div>

			<div style="width: 100%">
				<div style="float: right">
					<a href="<c:url value="/admin/productInventory"/>" class="btn btn-outline-success"> 목록으로 </a>
				</div>
			</div>
		</div>
	</div>