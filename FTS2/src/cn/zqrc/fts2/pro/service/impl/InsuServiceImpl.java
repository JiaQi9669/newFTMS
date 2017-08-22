package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.InsuService;
import cn.zqrc.fts2.pro.vo.Insu;

/**
 * 保险
 * @author JiaQi
 *
 */
@Service
@Transactional
public class InsuServiceImpl extends BaseDaoImpl<Insu> implements InsuService{

}
