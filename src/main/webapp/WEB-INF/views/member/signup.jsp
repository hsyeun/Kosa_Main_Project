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
		
	function nameCk(){
		var sname = $('#name').val();
		var exp = /^[a-zA-Z0-9가-힣]{3,10}$/;
		return exp.test(sname);
	}	
	$('#name').keyup(function() {
		
		if (nameCk()) {
			$('#namemsg').removeClass('w3-text-red').addClass('w3-text-green').html('사용가능한 이름입니다.');
				} else {
					$('#namemsg').removeClass('w3-text-green').addClass('w3-text-red').html('특수문자를 제외한 3~10자리를 입력하세요');
				}
			});
	function idCk(){
		var sid = $('#id').val();
		var exp = /^[a-zA-Z0-9]{3,20}$/;
		return exp.test(sid);
	}		
	$('#id').keyup(function() {
		if (idCk()) {
			$('#idmsg').removeClass('w3-text-red').addClass('w3-text-orange').html('유효한 아이디 입니다. 아이디 중복체크를 해주세요');
			$('#idck').prop('disabled', false);
		} else {
			$('#idmsg').removeClass('w3-text-green').addClass('w3-text-red').html('특수문자를 제외한 3~20자리를 입력하세요. ');
			$('#idck').prop('disabled', true);
			}
	});
	
	$('.ukcheck').click(function() {
		var sid = $(this).attr('id');
		var name = $('#'+sid).prev().val();
		$.ajax({
				url : 'ukCheck.do',
				type : 'post',
				dataType : 'json',
				data : {
					id : sid,
					name : name
				},
				success : function(data) {
			
					if (data.result == 'OK') {
						$('#'+sid).parent().next().removeClass('w3-text-orange').addClass('w3-text-blue').html('*** 사용 가능 ***');
					} else {
						$('#'+sid).parent().next().removeClass('w3-text-blue').addClass('w3-text-red').html('*** 중복 입니다. ***');
					}
				},
				error : function() {
				alert('### 통신 실패###');
				}
		});
	});
	
	
	function pwCk(){
		var spw = $('#password').val();
		var exp = /^.{4,16}$/;
		return exp.test(spw);
	}	
	$('#password').keyup(function(){
			
		if(pwCk()){
			$('#pwmsg').removeClass('w3-text-red').addClass('w3-text-green').html('유효한 패스워드 입니다.');
			$('#repw').val('');
		} else {
			$('#pwmsg').removeClass('w3-text-green').addClass('w3-text-red').html('4~20자리의 문자를 입력하세요. ');
		}
		
	});
	
	function repwCk(){
		var spw = $('#password').val();
		var repw = $('#rePassword').val();
		return spw == repw;
	}	
	$('#rePassword').keyup(function(){		
		if(repwCk()){
			$('#repwmsg').removeClass('w3-text-red').addClass('w3-text-green').html('비밀번호가 일치합니다.');
		} else {
			$('#repwmsg').removeClass('w3-text-green').addClass('w3-text-red').html('비밀번호가 일치하지 않습니다.');
		}
	});
	
	function telCk(){
		var stel = $('#phone').val();
		var exp = /^01[0-9]{9}$/;
		return exp.test(stel);
	}	
	$('#phone').keyup(function(){
		if(telCk()){
			$('#telmsg').removeClass('w3-text-red').addClass('w3-text-green').html('올바른 핸드폰 번호입니다.');
			$('#telck').prop('disabled', false);
		} else {
			$('#telmsg').removeClass('w3-text-green').addClass('w3-text-red').html('휴대폰 번호 11자리(숫자만) 를 입력하세요 ');
			$('#telck').prop('disabled', true);
		}
	});
	
	function emailCk(){
		var smail = $('#email').val();
		var exp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		return exp.test(smail);
	}
	$('#email').keyup(function(){
		if(emailCk()){
			$('#emailmsg').removeClass('w3-text-red').addClass('w3-text-green').html('유효한 메일계정입니다.');
			$('#emailck').prop('disabled', false);
		} else {
			$('#emailmsg').removeClass('w3-text-green').addClass('w3-text-red').html('메일형식에 맞지 않습니다.');
			$('#emailck').prop('disabled', true);
		}
	});
	
	$('.jbtn').click(function(){
		if(!($('#name').val())){
			alert('이름을 입력하세요');
			$('#name').focus();
			return;
		} 	
		if(!($('#id').val())){
			alert('아이디를 입력하세요');
			$('#id').focus();
			return;
		}
		if(!($('#password').val())){
			alert('비밀번호을 입력하세요');
			$('#password').focus();
			return;
		}
		if(!($('#rePassword').val())){
			alert('비밀번호 확인을 입력하세요');
			$('#rePassword').focus();
			return;
		}
		if(!($('#phone').val())){
			alert('전화번호를 입력하세요');
			$('#phone').focus();
			return;
		}
		if(!($('#email').val())){
			alert('이메일을 입력하세요');
			$('#email').focus();
			return;
		}
		
		$('#frm').submit();
		
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
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- Sign Up Start -->
		<div class="container-fluid">
			<div class="row h-100 align-items-center justify-content-center"
				style="min-height: 100vh;">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4 pt80">
					<div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<h3>회원 가입</h3>
						</div>
						<h6>필수정보를 입력해주세요.</h6>
						
						<form method="post" id="frm" name="frm" action="signupPROC.do">
						<div class="form-floating mb-2">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="jhondoe"> <label for="name">Username</label>
							<p class="fs-p mt-p dn">이름을 입력해주세요.</p>
						</div>

						<div class="form-floating mb-2 h60 clearfix">
							<input type="text" class="form-control form-w fl"
								id="identification" name="identification" placeholder="abc123"> <label
								for="identification">ID</label>
							<button type="submit" class="btn btn-primary py-3 w-40 mb-4 fr">아이디
								확인</button>
						</div>
						<p class="fs-p mt-p dn">아이디를 확인해주세요.</p>
						<p class="fs-p mt-p dn">사용할 수 없는 아이디입니다.</p>

						<div class="form-floating mb-2 clearfix">
							<input type="password" class="form-control" id="password" name="password"
								placeholder="Password"> <label for="password">Password</label>
							<p class="fs-p mt-p dn">패스워드를 입력해주세요.</p>
						</div>
						<div class="form-floating mb-2">
							<input type="password" class="form-control" id="rePassword" name="password"
								placeholder="Password"> <label for="password">Confirm
								Password</label>
							<p class="fs-p mt-p dn">패스워드가 일치하지 않습니다.</p>
							<p class="fs-p mt-p dn">패스워드를 확인해주세요.</p>
						</div>
						<div class="form-floating mb-2">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="name@example.com"> <label
								for="email">Email address</label>
							<p class="fs-p mt-p dn">이메일 주소를 입력해주세요.</p>
						</div>
						<div class="form-floating mb-3">
							<input type="tel" class="form-control" id="phone" name="phone"
								placeholder="010-0000-0000"> <label for="phone">Phone</label>
							<p class="fs-p mt-p dn">연락처를 입력해주세요.</p>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="sc_index" name="sc_index"
								aria-label="Floating label select example">
								<option value="1">대기업</option>
								<option value="2">대기업 계열·자회사</option>
								<option value="3">중견기업</option>
								<option value="4">중소기업</option>
								<option value="5">벤처기업</option>
								<option value="6">공공기관</option>
								<option value="7">공공기관·공기업</option>
								<option value="8">비영리단체</option>
								<option value="9">외국계</option>
								<option value="10">기타</option>
							</select> <label for="sc_index">기업 분류</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="i_index" name="i_index"
								aria-label="Floating label select example">
								<option value="1">제조, 생산, 화학업</option>
								<option value="2">미디어, 광고업 </option>
								<option value="3">기타</option>
								<option value="4">판매, 유통업</option>
								<option value="5">건설업</option>
								<option value="6">교육업</option>
								<option value="7">서비스업</option>
								<option value="8">IT, 정보통신업</option>
								<option value="9">금융, 은행업</option>
								<option value="10">기관, 협회</option>
								<option value="11">의료, 제약업</option>
								<option value="12">문화, 예술, 디자인업</option>
							</select> <label for="i_index">산업 분류</label>
						</div>
						</form>
						
						<a href="resume.do"><button
								type="submit" class="btn btn-primary py-3 w-100 mb-4 jbtn">다음으로</button></a>
						<p class="text-center mb-0">
							이미 가입되어 있다면? <a href="signin.do">로그인</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Sign Up End -->
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