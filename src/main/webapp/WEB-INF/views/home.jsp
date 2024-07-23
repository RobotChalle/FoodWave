<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" action="search" method="get">
          <input type="text" class="form-control" placeholder="지역명" name ="place">
			<button class="btn btn-primary" id="submit" type="submit">검색</button>
        </form>
      </div>
    </div>
  </header>
<body>
<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./resources/img/NewYorkMichelin3star.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./resources/img/patties.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./resources/img/tendong.png" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="px-4 py-5 my-5 text-center">
    <img class="d-block mx-auto mb-4" src="./resources/img/foodicon.png" alt="" width="72" height="57">
    <h1 class="display-5 fw-bold text-body-emphasis">여행지 맛집 정보</h1>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4">여행지에서 빠르게 찾아볼 수 있는 최고의 맛집들을 소개합니다! </p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <button type="button" class="btn btn-primary btn-lg px-4 gap-3"><a href="/hom/tfList" class="nav-link px-2 link-secondary">맛집 전체보기</a></abbr></button>
        <button type="button" class="btn btn-outline-secondary btn-lg px-4"><a href="/hom/input" class="nav-link px-2 link-body-emphasis">맛집 등록하기</a></button>
      </div>
    </div>
  </div>
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