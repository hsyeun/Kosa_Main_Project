package app.admin;

import java.util.*;

//import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//import app.member.Member;
import app.member.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class AdminDAO {
    	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
    
}
