<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>MIC 홈페이지</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="E:/dev/font-awesome/font-awesome-4.7.0/css/font-awesome.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
    <div class="container mx-0 mx-sm-auto">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">MIC</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8090/login/form">로그인<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8090/registerMember/form">회원가입<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">과제</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">게시판</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">출석</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!--헤더부분입니다-->
<header style="background-color: bisque">
    <div class="container">
        <div style="height: 150px" class="d-flex align-items-center">Multimedia<br>Information<br>Communication </div>
    </div>
</header>
<!--검색창입니다-->
<div class="container">
    <div class="input-group mt-2 col-md-9 offset-md-1">
        <input type="text" class="form-control" placeholder="Search Name ">
        <span class="input-group-btn">
              <button class="btn btn-secondary" type="button"><i class="fa fa-search" aria-hidden="true"></i>go</button>
            </span>
    </div>
</div>
<!-- <h2>Hello!</h2>
    <div>스프링 스터디 테스트입니다.</div>
    <div>
        ID <input type="text" name="id" id="id">
    </div>
    <div>
        이름 <input type="text" name="name" id="name">
    </div>
    <div>
        비밀번호 <input type="password" name="password" id="password">
    </div>
    <div>
        주소 <input type="text" name="address" id="address">
    </div>

    <button id="registerBtn">등록</button>
    <%--<button id="loginBtn">로그인</button>--%>
    </div> -->
    <div class="container">


<div class= "mt-5 col-md-10 offset-md-1">
  <h1 class= "mt-5 col-md-10 offset-md-5">회원가입</h1>
<div class= "mt-5 col-md-9 offset-md-1">
    <div class="form-group row">
      <label for="example-text-input" class="col-2 col-form-label">ID</label>
      <div class="col-10">
        <input class="form-control" type="text" value="ID" id="example-id-input">
      </div>
    </div>
    <div class="form-group row">
      <label for="example-password-input" class="col-2 col-form-label">비밀번호</label>
      <div class="col-10">
        <input class="form-control" type="password" value="Your password" id="example-password-input">
      </div>
    </div>
    <div class="form-group row">
      <label for="example-search-input" class="col-2 col-form-label">이름</label>
      <div class="col-10">
        <input class="form-control" type="text" value="Your name" id="example-name-input">
      </div>
    </div>
    <div class="form-group row">
      <label for="example-email-input" class="col-2 col-form-label">주소</label>
      <div class="col-10">
        <input class="form-control" type="text" value="Your address" id="example-address-input">
      </div>
    </div>
    <div class="form-group row mt-5 col-md-10 offset-md-6">
      <button id="registerBtn" >등록</button>
    </div>
    </div>
    <!-- <div class="form-group row">
      <label for="example-tel-input" class="col-2 col-form-label">전화번호</label>
      <div class="col-10">
        <input class="form-control" type="tel" value="Youer phone number" id="example-tel-input">
      </div>
    </div> -->
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#registerBtn").click(function(){
                var id = $("#id").val();
                var name = $("#name").val();
                var password = $("#password").val();
                var address = $("#address").val();
//                var v_token = "{{csrf_token()}}";
//
                var data = { id:id, name:name, password:password, address:address };

                $.ajax({
                    url: "/registerMember",
                    data: JSON.stringify(data),
                    dataType: 'json',
                    contentType : "application/json; charset=UTF-8",
                    type: "POST",
                    success: function(response){
                        if(response['result'] == true){
                            location.href= "http://localhost:8090/login/form";
                        }
                    },error:function(request,status,error){ alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); }
                });
            });
//            $("#loginBtn").click(function(){
//                location.href= "http://localhost:8090/login/form";
//            });
        });

    </script>
<!-- jQuery first, then Tether, then Bootstrap JS. -->
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>
</html>
