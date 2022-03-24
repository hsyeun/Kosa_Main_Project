package app.goodsinfo;

import java.util.List;

public interface GoodsInfoService {
	
	public List<GoodsInfo> getGoodsInfoList() throws Exception;
	
	public GoodsInfo getGoodsInfoContent(String code) throws Exception;

	public void insertGoodsInfo(GoodsInfo vo) throws Exception;

	public void deleteGoodsInfo(String code) throws Exception;
	
	public void updateGoodsInfo(GoodsInfo vo) throws Exception;

}
