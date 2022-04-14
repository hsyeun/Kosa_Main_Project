<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/head.jsp">
	<jsp:param name="" value="" />
</jsp:include>

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


		<!-- Sign In Start -->
		<div class="container-fluid">
			<div class="row h-100 align-items-center justify-content-center"
				style="min-height: 100vh;">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
					<div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<h3>로그인</h3>
						</div>

						<form action="signinPROC.do" id="frm" name="frm" method="post">
							<div class="form-floating mb-3">
								<input type="text" name="identification" class="form-control" id="identification"
									placeholder="Id"> <label for="identification">ID</label>
							</div>
							<div class="form-floating mb-4">
								<input type="password" name="password" class="form-control" id="password"
									placeholder="Password"> <label for="password">Password</label>
							</div>

							<div
								class="d-flex align-items-center justify-content-between mb-4">
								<div class="form-check">
									<input type="checkbox" class="form-check-input"
										id="checkId" name="checkId"> 
									<label class="form-check-label"
										for="checkId">Check me out</label>
								</div>
								<a href="forgotID.do">ID 찾기</a> <a href="forgotPW.do">PW 찾기</a>
							</div>
							<button type="submit" class="btn btn-primary py-3 w-100 mb-4"
								id="sbtn">Sign In</button>
							<p class="text-center mb-0">
								아직 회원이 아니라면? <a href="signup.do">회원가입</a>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Sign In End -->
	</div>

	<!-- Chatbot & Arrow UP -->
	<jsp:include page="../include/chat-and-arrow.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

	<!-- Footer & JS Source -->
	<jsp:include page="../include/footer-and-js.jsp">
		<jsp:param name="" value="" />
	</jsp:include>


	<script>
		$(document).ready(function() {

			if ('${MSG}' == 'false') {
				alert('아이디와 비번을 확인하세요');
			}

			$('#sbtn').click(function() {
				if (!($('#identification').val())) {
					alert('아이디를 입력하세요');
					$('#identification').focus();
					return false;
				}
				if (!($('#password').val())) {
					alert('패스워드를 입력하세요');
					$('#password').focus();
					return false;
				}
				$('#frm').submit();
			});
			
			/* -- 아이디저장 체크박스 -- */
			// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
		    var key = getCookie("key");
		    $("#identification").val(key); 
		     
		    // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
		    if($("#identification").val() != ""){ 
		        $("#checkId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
		    }
		     
		    $("#checkId").change(function(){ // 체크박스에 변화가 있다면,
		        if($("#checkId").is(":checked")){ // ID 저장하기 체크했을 때,
		            setCookie("key", $("#identification").val(), 7); // 7일 동안 쿠키 보관
		        }else{ // ID 저장하기 체크 해제 시,
		            deleteCookie("key");
		        }
		    });
		     
		    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
		    $("#identification").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
		        if($("#checkId").is(":checked")){ // ID 저장하기를 체크한 상태라면,
		            setCookie("key", $("#identification").val(), 7); // 7일 동안 쿠키 보관
		        }
		    });

		// 쿠키 저장하기 
		// setCookie => saveid함수에서 넘겨준 시간이 현재시간과 비교해서 쿠키를 생성하고 지워주는 역할
		function setCookie(cookieName, value, exdays) {
			var exdate = new Date();
			exdate.setDate(exdate.getDate() + exdays);
			var cookieValue = escape(value)
					+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
			document.cookie = cookieName + "=" + cookieValue;
		}

		// 쿠키 삭제
		function deleteCookie(cookieName) {
			var expireDate = new Date();
			expireDate.setDate(expireDate.getDate() - 1);
			document.cookie = cookieName + "= " + "; expires="
					+ expireDate.toGMTString();
		}
	     
		// 쿠키 가져오기
		function getCookie(cookieName) {
			cookieName = cookieName + '=';
			var cookieData = document.cookie;
			var start = cookieData.indexOf(cookieName);
			var cookieValue = '';
			if (start != -1) { // 쿠키가 존재하면
				start += cookieName.length;
				var end = cookieData.indexOf(';', start);
				if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
					end = cookieData.length;
	                console.log("end위치  : " + end);
				cookieValue = cookieData.substring(start, end);
			}
			return unescape(cookieValue);
		}

		});
	</script>

</body>
</html>