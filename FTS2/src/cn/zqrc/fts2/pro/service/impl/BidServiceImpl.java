package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.BidService;
import cn.zqrc.fts2.pro.vo.Bid;

/**
 * 招投标
 * @author JiaQi
 *
 */
@Service
@Transactional
public class BidServiceImpl extends BaseDaoImpl<Bid> implements BidService{

}
