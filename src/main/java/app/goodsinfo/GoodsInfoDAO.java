package app.goodsinfo;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class GoodsInfoDAO {
    	
	@Autowired
    SqlSession sqlSession;
	
	public List<GoodsInfo> getList() throws Exception {
		
		List<GoodsInfo> result = new ArrayList<GoodsInfo>();
		
        try
        {
        	result = sqlSession.selectList("GoodsInfo.getGoodsInfoList");
        }
        catch (Exception se)
        {
        	throw new Exception(se);
        }
        
        return result;
		
	}
	
	public GoodsInfo getContent(String p_code) throws Exception {

		GoodsInfo goodsInfo = null;
        try
        {
        	goodsInfo = sqlSession.selectOne("GoodsInfo.getGoodsInfoContent", p_code);
        }
        catch (Exception se)
        {
        	throw new Exception(se);
        }
        
        return goodsInfo;
		
	}

	public void insert(GoodsInfo vo) throws Exception {
   
		try
		{	
        	sqlSession.insert("GoodsInfo.insertGoodsInfo", vo);
	    }
	    catch (Exception se)
	    {
        	throw new Exception(se);
	    }
		
	}

	public void delete(String code) throws Exception {
		try
		{
        	sqlSession.delete("GoodsInfo.deleteGoodsInfo", code);
	    }
	    catch (Exception se)
	    {
        	throw new Exception(se);
	    }		
	}

	public void update(GoodsInfo vo) throws Exception {
		try
		{
        	sqlSession.update("GoodsInfo.updateGoodsInfo", vo);
	    }
	    catch (Exception se)
	    {
        	throw new Exception(se);
	    }	
	}
    
}
