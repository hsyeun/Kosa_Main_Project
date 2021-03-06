<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/head.jsp">
	<jsp:param name="" value="" />
</jsp:include>

<script>
	$(document).ready(function() {
	
		$('#ibtn').click(function(){
			var sname = $('#name').val();
			var smail = $('#email').val();
			
			if(!sname){
				alert('이름을 입력하세요');
				return;
			}
			if(!smail){
				alert('이메일 주소를 입력하세요');
				return;
			}
			
			$.ajax({
				url : 'forgotIDPROC.do',
				type : 'post',
				dataType : 'json',
				data : {
					name : sname,
					email : smail			
				},
				success : function(data) {
					
					if(data.result =='NO'){
						alert('일치하는 회원정보가 없습니다');
					} else{
						alert('고객님의 아이디는 '+ {data.id} +'입니다.');
						
					}
				},
				error : function() {
					alert('### 통신에러.###');
				}
		});

		});
	
});
</script>

</head>
<body>

	<!-- Navigation -->
	<jsp:include page="../include/nav.jsp">
		<jsp:param name="" value="" />
	</jsp:include>


    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sign In Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <!-- <a href="#" class="">
                                <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>DASHMIN</h3>
                            </a> -->
                            <h3>아이디 찾기</h3>
                        </div>
                        
                        <form action="forgotIDPROC.do" id="frm" name="frm" method="post">
                        
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                            <label for="name">Name</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
                            <label for="email">Email Address</label>
                        </div>
                        <button type="submit" class="btn btn-primary py-3 w-100 mb-4">검색하기</button>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <a href="forgotPW.do">PW 찾기</a>
                            <a href="signin.do">로그인</a>
                            <a href="signup.do">회원가입</a>
                        </div>
                        
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- End -->
    </div>
    

	<!-- Chatbot & Arrow UP -->
	<jsp:include page="../include/chat-and-arrow.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

	<!-- Footer & JS Source -->
	<jsp:include page="../include/footer-and-js.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

</body>
</html>