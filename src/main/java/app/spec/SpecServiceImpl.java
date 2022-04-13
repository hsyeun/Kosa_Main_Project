package app.spec;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SpecServiceImpl implements SpecService{
	
	//데이터베이스 받아서 모델로 만듬	
	@Autowired
	private SpecDAO specDAO;
	
	@Override
	public List<Spec> getSpecList(int index) throws Exception {
		// TODO Auto-generated method stub
		List<Spec> result =specDAO.getList(index);	
		return result;
	}

}
