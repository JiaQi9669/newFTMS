package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.BrankService;
import cn.zqrc.fts2.pro.vo.Brank;

/**
 * 银行模块
 * @author JiaQi
 *
 */
@Service
@Transactional
public class BrankServiceImpl extends BaseDaoImpl<Brank> implements BrankService{

}
