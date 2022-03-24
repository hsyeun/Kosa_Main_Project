package app.goodsinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class GoodsInfoServiceImpl implements GoodsInfoService {

	@Autowired
	private GoodsInfoDAO goodsInfoDAO;
	
	@Override
	public List<GoodsInfo> getGoodsInfoList() throws Exception {
		List<GoodsInfo> result = goodsInfoDAO.getList(); 
		return result;
	}

	@Override
	public GoodsInfo getGoodsInfoContent(String code) throws Exception {
		GoodsInfo vo = goodsInfoDAO.getContent(code);
		return vo;
	}

	@Override
	public void insertGoodsInfo(GoodsInfo vo) throws Exception {
		goodsInfoDAO.insert(vo);
	}

	@Override
	public void deleteGoodsInfo(String code) throws Exception {
		goodsInfoDAO.delete(code);
	}

	@Override
	public void updateGoodsInfo(GoodsInfo vo) throws Exception {
		goodsInfoDAO.update(vo);
	}

}
