
/**
 * 메인 페이지를 처리하는 컨트롤러 클래스
 * @author helloastro
 * @version 1.0
 * @since  
 * 
 */

package controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import app.member.Member;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {

	@Autowired
    SqlSession sqlSession;
    
    /**
	 * 메인 페이지
	 * @return View 지정
     * @throws Exception 
	 */
	@RequestMapping(value = "/main.do")
	public String main(Model model) throws Exception {
		
		
//		String now = "";
//		
//    	try
//    	{
//    		log.debug("데이터베이스 연결 성공\n");
//    		now = sqlSession.selectOne("Test.getTest");
//    	    
//    	} catch (Exception e) {
//    		log.debug(e.getMessage());
//    		log.debug("데이터베이스 연결 실패\n");	
//    	}
//    	
//    	model.addAttribute("now", now);
    	
		return "main";
	}
	
    /**
	 * 메인 페이지
	 * @return View 지정
     * @throws Exception 
	 */
//	@RequestMapping(value = "/ajax.do")
//	@ResponseBody
//	public List<Member> ajax(/* @PathVariable String id */) throws Exception {
//		List<Member> result_list = null;
//		
//		try
//		{
//			result_list = memberServiceImpl.getMemberList(); 
//        }
//        catch (Exception se) {
//        	log.debug(se.getMessage());
//        }
//    	
//		return result_list;
//	}
}
