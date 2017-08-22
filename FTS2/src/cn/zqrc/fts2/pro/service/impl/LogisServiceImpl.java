package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.LogisService;
import cn.zqrc.fts2.pro.vo.Logis;

/**
 * 物流
 * @author JiaQi
 *
 */
@Service
@Transactional
public class LogisServiceImpl extends BaseDaoImpl<Logis> implements LogisService{

}
