<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
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
	<main class="container">
		<header class="py-5 text-center">
			<h1>${restaurant}</h1>
		</header>
		<div class="row g-5">
			<section class="col-md-3 col-lg-4 order-md-last">
				<aside>
					<p>${place}</p>
					<p>${username}</p>
					<p>${in_date}</p>
				</aside>
			</section>
			<article id="article-content" class="col-md-9 col-lg-8">
				<h3>${review}</h3>
			</article>
		</div>
		</div>
		<hr size="10" noshade="noshade" style="background-color: black">
		<div class="row 9-5">
			<sectoin>
				<ul id="article-comments" class="row col-md-10 col-lg-8 pt-3">
				<table>
					<c:forEach items="${commentList}" var="cvo">
							<tr>
								<td><strong>${cvo.c_user}</strong></td>
								<td><p>${cvo.tf_comment}</p></td>
							</tr>
					</c:forEach>
					</table>
				</ul>
			</sectoin>
			<form action="commentSave" class="row g-3" method="POST">
				<input type=hidden name="no" value=${no}>
				<div class="col-md-9 col-lg-8">
					<label for="articleComment" hidden>댓글</label>
					<textarea class="form-control" id="articleComment"
						name="tf_comment" placeholder="댓글 쓰기.." rows="3" required></textarea>
					작성자 : <input type=text name=c_user>
				</div>
				<div class="col-md-3 col-lg-4">
					<label for="comment-submit" hidden>댓글 쓰기</label>
					<button class="btn btn-primary" id="comment-submit" type="submit">쓰기</button>
				</div>

			</form>
		</div>
	</main>
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