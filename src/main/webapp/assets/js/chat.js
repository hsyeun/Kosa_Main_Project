var running = false;
var mode='off';
var re_msg='';

function consultClick() {
	document.getElementById('message').disabled = false;
	msg = "안녕하세요 IT 취업 상담봇입니다.<br/>고민을 말씀해주세요.<br/>예시 : 데이터베이스 책 추천";
	mode = 'consult';
	firstMsg(msg, mode);
	console.log(mode);
	document.getElementById('first_msg_section').style.display = 'none';
	closeMsg()
  
}

function infoClick() {
	document.getElementById('message').disabled = false;
	msg = "안녕하세요 IT 기업 정보봇입니다.<br/>기업의 장단점과 면접에 대한 정보를 알려드릴게요.<br/>예시 : 삼성전자 면접 궁금해요";
	mode = 'info';
	firstMsg(msg, mode);
	console.log(mode);
	document.getElementById('first_msg_section').style.display = 'none';
	closeMsg()
  
}

function other_answer() {
	addResponseMsg(info+questions,0);
	console.log('other');
  
}
var questions='';
var info = '<유사 질문 리스트><br/>';

function send() {
  if (running == true) return;
  var msg = document.getElementById("message").value;
  if (msg == "") return;
  
  re_msg = msg;
  
  if (mode=='consult'){
	
	 $.ajax({ 
		url: 'http://127.0.0.1:5000/chat_consult', // 요청 할 주소
		async: true, // false 일 경우 동기 요청으로 변경 
		type: 'POST', // GET, PUT 
		data: { 'query':  msg}, // 전송할 데이터 
		dataType: 'json', // xml, json, script, html 
		success: function(jqXHR) {
			console.log(jqXHR.text);
			answers = jqXHR.text[0];
			simQ = jqXHR.text[1];
			addMsg(msg);
			
			if(answers.length>1){
				
			for(let i=0; i<2; i++) {
					addResponseMsg("Robot"+(i+1)+ "의 의견 : <br/>" + answers[i],i);
				}
				
			} else{
				addResponseMsg("Robot"+ 1 + "의 의견 : <br/>" + answers[0],0);
			}
			
		
			for(let i=0; i<simQ.length; i++) {
				
				questions = questions + (i+1) + '.' + simQ[i] + '<br/>';
				
				}
					
			guideMsg(mode);
			closeMsg();
	

		}, // 요청 완료 시 
		error: function(XHTMLHttpRequest, textStatus, errorThrown) {
			console.log(XHTMLHttpRequest)
			console.log(textStatus)
			console.log(errorThrown)
		//	console.log('error')
		}, // 요청 실패. 
		});
	
} else if(mode=='info'){
	
	$.ajax({ 
		url: 'http://127.0.0.1:5000/chat_info', // 요청 할 주소
		async: true, // false 일 경우 동기 요청으로 변경 
		type: 'POST', // GET, PUT 
		data: { 'query':  msg}, // 전송할 데이터 
		dataType: 'json', // xml, json, script, html 
		success: function(jqXHR) {
			console.log(jqXHR.text);
			var answers = jqXHR.text;
			var intent= jqXHR.intent;
			var returns='';
			addMsg(msg);
			
			if(answers.slice(0,4)=='죄송해요'){
				addResponseMsg(answers);
				
			} else{
			
			
			if (intent=='면접'){
				let title = answers[0];
				let que = answers[1];
				let ans = answers[2];
				
				returns1 = returns + '제목 : ' + title
				returns2 = returns + '질문 : ' + que 
				returns3 = returns + '답변 : ' + ans
				addResponseMsg(returns1);
				addResponseMsg(returns2);
				addResponseMsg(returns3);
			} else if(intent=='공통'){
				let title = answers[0];
				let adv = answers[1];
				let disadv = answers[2];
				
				returns1 = returns + '제목 : ' + title
				returns2 = returns + '장점 : ' + adv 
				returns3 = returns + '단점 : ' + disadv
				addResponseMsg(returns1);
				addResponseMsg(returns2);
				addResponseMsg(returns3);
				
			} else{
				returns = returns + intent + " : " + answers;
				addResponseMsg(returns);
				
			}
			
			guideMsg(mode);
			}
			closeMsg();
			
			
			
			

		}, // 요청 완료 시 
		error: function(XHTMLHttpRequest, textStatus, errorThrown) {
			console.log(XHTMLHttpRequest)
			console.log(textStatus)
			console.log(errorThrown)
		//	console.log('error')
		}, // 요청 실패. 
		});
	
	
	
	
}
  
 
		
		
  running = true;
  //addMsg(msg);
  //DELEAY MESSAGE RESPOSE Echo
  //window.setTimeout(addResponseMsg, 1000, msg);
}

function addMsg(msg) {
  var div = document.createElement("div");
  div.innerHTML =
    "<span style='flex-grow:1'></span><div class='chat-message-sent'>" +
    msg +
    "</div>";
  div.className = "chat-message-div";
  document.getElementById("message-box").appendChild(div);
  //SEND MESSAGE TO API
  document.getElementById("message").value = "";
  document.getElementById("message-box").scrollTop = document.getElementById(
    "message-box"
  ).scrollHeight;
}
function addResponseMsg(msg, robot) {
  var div = document.createElement("div");
  if(robot==0){
	  div.innerHTML = "<img class='robot_img' src='/Kosa_Main_Project/assets/img/robot1.png' width='60' height='60'/><div class='chat-message-received'>" + msg + "</div>";
	}else{
		  div.innerHTML = "<img class='robot_img' src='/Kosa_Main_Project/assets/img/robot2.png' width='60' height='60'/><div class='chat-message-received'>" + msg + "</div>";
	}
  div.className = "chat-message-div";
  document.getElementById("message-box").appendChild(div);
  document.getElementById("message-box").scrollTop = document.getElementById(
    "message-box"
  ).scrollHeight;
  running = false;
  questions='';
  
}

function firstMsg(msg,mode) {
  var div = document.createElement("div");
  
  
  if(mode=='info'){
	  div.innerHTML = "<img class='robot_img' src='/Kosa_Main_Project/assets/img/robot1.png' width='60' height='60'/><div class='chat-message-received'>" + msg + "</div>";
	}else{
		  div.innerHTML = "<img class='robot_img' src='/Kosa_Main_Project/assets/img/robot2.png' width='60' height='60'/><div class='chat-message-received'>" + msg + "</div>";
	}
  
  
  div.className = "chat-message-div";
  document.getElementById("message-box").appendChild(div);
  document.getElementById("message-box").scrollTop = document.getElementById(
    "message-box"
  ).scrollHeight;
  running = false;
}

function guideMsg(mode) {
  var div = document.createElement("div");

  
  if(mode=='info'){
	msg="<h5 class='guide_msg'>다른 답변도 확인해보세요!</h5><br/><button class='btn_other' onclick='re_send()'>디른 답변 보기</button>"
	  div.innerHTML = "<img class='robot_img' src='/Kosa_Main_Project/assets/img/robot1.png' width='60' height='60'/><div class='chat-message-received'>" 
	  + msg + "</div>";
	}else{
		msg="<h5 class='guide_msg'>다른 사용자들의 고민도 살펴보세요!</h5><br/><button class='btn_other' onclick='other_answer()'>유사 질문 보기</button>"
		  div.innerHTML = "<img class='robot_img' src='/Kosa_Main_Project/assets/img/robot2.png' width='60' height='60'/><div class='chat-message-received'>" 
		  + msg + "</div>";
	}
  
  
  
  div.className = "chat-message-div";
  document.getElementById("message-box").appendChild(div);
  document.getElementById("message-box").scrollTop = document.getElementById(
    "message-box"
  ).scrollHeight;
  running = false;
}

function closeMsg() {
  var div = document.createElement("div");
  
  msg="<button class='btn_restart' onclick='clickRestart()'>디시 시작하기</button>"
	  div.innerHTML = "<div class='chat-restart'>" 
	  + msg + "</div>";
  
  
  div.className = "chat-message-div";
  document.getElementById("message-box").appendChild(div);
  document.getElementById("message-box").scrollTop = document.getElementById(
    "message-box"
  ).scrollHeight;
  running = false;
}

function re_send() {
	
	
	 $.ajax({ 
		url: 'http://127.0.0.1:5000/chat_info', // 요청 할 주소
		async: true, // false 일 경우 동기 요청으로 변경 
		type: 'POST', // GET, PUT 
		data: { 'query':  re_msg}, // 전송할 데이터 
		dataType: 'json', // xml, json, script, html 
		success: function(jqXHR) {
			console.log(jqXHR.text);
			var answers = jqXHR.text;
			var intent= jqXHR.intent;
			var returns='';
			if (intent=='면접'){
				let title = answers[0];
				let que = answers[1];
				let ans = answers[2];
				
				returns1 = returns + '제목 : ' + title
				returns2 = returns + '질문 : ' + que 
				returns3 = returns + '답변 : ' + ans
				addResponseMsg(returns1);
				addResponseMsg(returns2);
				addResponseMsg(returns3);
			} else if(intent=='공통'){
				let title = answers[0];
				let adv = answers[1];
				let disadv = answers[2];
				
				returns1 = returns + '제목 : ' + title
				returns2 = returns + '장점 : ' + adv 
				returns3 = returns + '단점 : ' + disadv
				addResponseMsg(returns1);
				addResponseMsg(returns2);
				addResponseMsg(returns3);
				
			} else{
				returns = returns + intent + " : " + answers;
				addResponseMsg(returns);
				
			}
			
			guideMsg(mode);
			closeMsg();
			
			
			

		}, // 요청 완료 시 
		error: function(XHTMLHttpRequest, textStatus, errorThrown) {
			console.log(XHTMLHttpRequest)
			console.log(textStatus)
			console.log(errorThrown)
		//	console.log('error')
		}, // 요청 실패. 
		});
	
	
	
	
  running = true;
  //addMsg(msg);
  //DELEAY MESSAGE RESPOSE Echo
  //window.setTimeout(addResponseMsg, 1000, msg);
}




function clickRestart(){
	const myNode = document.getElementById("message-box");
	myNode.innerHTML = "<div class='chat-message-info' id='first_msg_section'><span style='flex-grow:1'></span><h5 class='firts_msg'>IT 직무 취업을 원하십니까?</h5><h5 class='firts_msg'>우선, 아래 버튼 중 원하시는 메뉴를 선택해주세요.</h5><button id='btn_consult' onclick='consultClick()'>상담</button><button id='btn_info' onclick='infoClick()'>기업 문의</button></div>";
	

}


document.getElementById("message").addEventListener("keyup", function (event) {
  if (event.keyCode === 13) {
    event.preventDefault();
    send();
  }
});
 document.getElementById("chatbot_toggle").onclick = function () {
    if (document.getElementById("chatbot").classList.contains("collapsed")) {
      document.getElementById("chatbot").classList.remove("collapsed")
      document.getElementById("chatbot_toggle").children[0].style.display = "none"
      document.getElementById("chatbot_toggle").children[1].style.display = ""
      //setTimeout(firstMsg,1000,"안녕하세요")
    }
    else {
      document.getElementById("chatbot").classList.add("collapsed")
      document.getElementById("chatbot_toggle").children[0].style.display = ""
      document.getElementById("chatbot_toggle").children[1].style.display = "none"
    }
  }
  
 

  