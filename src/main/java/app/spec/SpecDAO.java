package app.spec;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import app.spec.SpecDAO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class SpecDAO {
	//xml 실행. 실제 데이터에 접근&조작하는 클래스
	@Autowired
    SqlSession sqlSession;
	
	 // 해당 기업의 공고 목록 보기
		public List<Spec> getList(int index) throws Exception {
			
			List<Spec> result = new ArrayList<Spec>();
			
			try
	        {
	        	result = sqlSession.selectList("Spec.getSpecList", index);
	        }
	        catch (Exception se)
	        {
	        	throw new Exception(se);
	        }
	      
	        return result;
			
		}
		
}
