
/**
 * 회원관련 페이지를 처리하는 컨트롤러 클래스
 * @author soo
 * @version 1.0
 * @since  2022.03.22
 * 
 */

package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import app.member.MemberDAO;
import app.member.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class JoinController {

	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	MemberDAO mDAO;
	

	/**
	 * 회원가입 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	
//	 아이디, 메일, 전화번호 중복검사
	@RequestMapping("/ukCheck.moa")
	@ResponseBody
	public HashMap<String, String> ukCheck(MemberVO mVO) {
		int cnt = mDAO.ukCheck(mVO);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "NO");
		map.put("cnt", cnt+"");
		if(cnt != 1) {
			map.put("result", "OK");
		}		
		return map;
	}

	/**
	 * 회원가입-이력서 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */



}
