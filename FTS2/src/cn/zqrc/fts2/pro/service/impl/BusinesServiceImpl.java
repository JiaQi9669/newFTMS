package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.BusinesService;
import cn.zqrc.fts2.pro.vo.Busines;

/**
 * 商务
 * @author JiaQi
 *
 */
@Service
@Transactional
public class BusinesServiceImpl extends BaseDaoImpl<Busines> implements BusinesService{

}
