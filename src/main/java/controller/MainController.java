
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

import app.goodsinfo.GoodsInfo;
import app.goodsinfo.GoodsInfoService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {

	@Autowired
    SqlSession sqlSession;

    @Autowired
    private GoodsInfoService goodsInfoServiceImpl;
    
    /**
	 * 메인 페이지
	 * @return View 지정
     * @throws Exception 
	 */
	@RequestMapping(value = "/main.do")
	public String main(Model model) throws Exception {
		String now = "";
		
    	try
    	{
    		log.debug("데이터베이스 연결 성공\n");
    		now = sqlSession.selectOne("Test.getTest");
    	    
    	} catch (Exception e) {
    		log.debug(e.getMessage());
    		log.debug("데이터베이스 연결 실패\n");	
    	}
    	
    	model.addAttribute("now", now);
    	
		return "main";
	}
	
    /**
	 * 리스트 페이지
	 * @return View 지정
     * @throws Exception 
	 */
	@RequestMapping(value = "/list.do")
	public String list(Model model) throws Exception {
		List<GoodsInfo> result_list = null;
		
		try
		{
			result_list = goodsInfoServiceImpl.getGoodsInfoList(); 
        }
        catch (Exception se) {
        	log.debug(se.getMessage());
        }
    	
    	model.addAttribute("result_list", result_list);
    	
		return "goodsinfo/list";
	}
	
    /**
	 * 입력 페이지
	 * @return View 지정
     * @throws Exception 
	 */
	@RequestMapping(value = "/input.do")
	public String input(@RequestParam(value="p_mode", defaultValue="INSERT") String p_mode,
			@RequestParam(value="p_code", defaultValue="") String p_code, Model model) throws Exception {
		
		GoodsInfo items = new GoodsInfo();
		
		try
		{
			if (!"".equals(p_code))
			{
				items = goodsInfoServiceImpl.getGoodsInfoContent(p_code);
				p_mode = "UPDATE";
			}
		}
		catch (Exception se) {
		    System.out.println(se.getMessage());
		}
    	
    	model.addAttribute("item", items);
    	model.addAttribute("p_code", p_code);
    	model.addAttribute("p_mode", p_mode);
    	
		return "/goodsinfo/input";
	}
	
    /**
	 * 저장 페이지
	 * @return View 지정
     * @throws Exception 
	 */
	@RequestMapping(value = "/action.do")
	public String action(@RequestParam(value="p_mode", defaultValue="") String p_mode,
			@ModelAttribute GoodsInfo goodsInfo, Model model) throws Exception {
		
	    String resultMsg	= "";
	    String resultStatus	= "";
	    
	    try
	    {
	    	if (p_mode.equals("INSERT"))
	    	{    		

				goodsInfoServiceImpl.insertGoodsInfo(goodsInfo);
	    			
	    	    resultMsg = "등록되었습니다.";
	    	    resultStatus = "ACT";
	    	}

	    	if (p_mode.equals("UPDATE"))
	    	{
				goodsInfoServiceImpl.updateGoodsInfo(goodsInfo);
				
	    	    resultMsg = "수정되었습니다.";
	    	    resultStatus = "ACT";

	    	}
	 
	    	if (p_mode.equals("DELETE"))
	    	{
	    		goodsInfoServiceImpl.deleteGoodsInfo(goodsInfo.getCode());
	    		
	    	    resultMsg = "삭제되었습니다.";
	        	resultStatus = "ACT";
	    	}
	    	
	    	resultStatus = "ACT";
		    //out.println("성공하였습니다.");
		}
	    catch(Exception e)
		{
			log.debug(e.getMessage());
		}
    	
    	model.addAttribute("resultStatus", resultStatus);
    	model.addAttribute("resultMsg", resultMsg);
    	
		return "goodsinfo/action";
	}
	
    /**
	 * 메인 페이지
	 * @return View 지정
     * @throws Exception 
	 */
	@RequestMapping(value = "/ajax.do")
	@ResponseBody
	public List<GoodsInfo> ajax(/* @PathVariable String id */) throws Exception {
		List<GoodsInfo> result_list = null;
		
		try
		{
			result_list = goodsInfoServiceImpl.getGoodsInfoList(); 
        }
        catch (Exception se) {
        	log.debug(se.getMessage());
        }
    	
		return result_list;
	}
}
