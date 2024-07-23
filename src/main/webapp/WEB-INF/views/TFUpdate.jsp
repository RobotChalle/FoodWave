<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
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
          <li><a href="/hom/input" class="nav-link px-2 link-body-emphasis">등록하기</a></li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search" action="search" method="get">
          <input type="search" class="form-control" placeholder="Search..." aria-label="Search">
        </form>
      </div>
    </div>
  </header>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">글 수정</h4>
				<form method="post" action="updateSave"
					onsubmit="return textchk()">
					<div class="row">
						글 번호 <input type="number" name =no value =${no} readonly>
						<div class="col-md-6 mb-3">
							<label >작성자</label> <input type="text"
								class="form-control" name="username"
								maxlength="50" placeholder="작성자를 입력해주세요" value = ${username} required>
						</div>
						<div class="col-md-6 mb-3">
							<label >여행지</label> <input type="text"
								class="form-control" name="place" placeholder="여행지를 입력해주세요" value= ${place}
								required>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label>맛집 이름</label> <input type="text"
								class="form-control" name="restaurant" placeholder="맛집 이름을 입력해주세요" value= ${restaurant}
								required>
						</div>
					</div>
					<div class="row">
					<textarea class="col-md-6 mb-3"
						name="review" placeholder="리뷰 내용" rows="3" value= ${review} required></textarea>
					</div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">수정
						완료</button>
				</form>
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
<script>
	function textchk() {
		if(myform.username.value.length==0){
			alert("작성자 입력은 필수입니다.")
			myform.username.focus()
			return false;
		}else if(myform.place.value.length==0){
			alert("여행지 입력은 필수입니다.")
			myform.place.focus()
		}
		else{
			return true;
		}
	}
</script>
</html>