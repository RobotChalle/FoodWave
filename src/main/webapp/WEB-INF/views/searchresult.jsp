<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 웨이브</title>
</head>
<header class="p-3 mb-3 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/hom/" class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" "></svg>
          <img src = "./resources/img/FOODWAVE.PNG" width="80">
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="/hom/tfList" class="nav-link px-2 link-secondary">전체 보기</a></li>
          <li><a href="/hom/input" class="nav-link px-2 link-body-emphasis">게시글 등록</a></li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search" action="search" method="get">
          <input type="search" class="form-control" placeholder="Search..." aria-label="Search">
        </form>
      </div>
    </div>
  </header>
<body>
	<h2>${place}</h2>
	<table class="table table-hover table-striped text-center" style = "border: 1px solid;">
		<thead>
			<tr>
				<td>no</td>
				<td>작성자</td>
				<td>여행지</td>
				<td>맛집 이름</td>
				<td>등록일</td>
				<td>삭제</td>
				<td>수정</td>
				<td>자세히</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items = "${searchTF}" var = "tfvo">
				<tr>
					<td>${tfvo.no}</td>
					<td>${tfvo.username}</td>
					<td>${tfvo.place}</td>
					<td>${tfvo.restaurant}</td>
					<td>${tfvo.in_date}</td>
					<td><button type="button" class="btn btn-outline-danger"><a href= "delete?no=${tfvo.no}">삭제</a></button></td>
					<td><button type="button" class="btn btn-outline-success"><a href = "update?no=${tfvo.no}&username=${tfvo.username}&place=${tfvo.place}&restaurant=${tfvo.restaurant}&review=${tfvo.review}">수정</a></button></td>
					<td><button type="button" class="btn btn-outline-primary"><a href = "tfDetails?no=${tfvo.no}&username=${tfvo.username}&place=${tfvo.place}&restaurant=${tfvo.restaurant}&review=${tfvo.review}&in_date=${tfvo.in_date}">자세히 보기</a></button></td>
				</tr>
			</c:forEach>
			<tr>
		</tbody>
	</table>
</body>
<div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <p class="col-md-4 mb-0 text-body-secondary">© 2024 스마트웨이브, Inc</p>

    <a href="/hom/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
       <img src = "./resources/img/FOODWAVE.PNG" width="80">
    </a>

    <ul class="nav col-md-4 justify-content-end">
      <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">홈</a></li>
      <li class="nav-item"><a href="/hom/tfList" class="nav-link px-2 text-body-secondary">전체보기</a></li>
      <li class="nav-item"><a href="/hom/insert" class="nav-link px-2 text-body-secondary">입력하기</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">개발자 : 이정우</a></li>
    </ul>
  </footer>
</div>
</html>