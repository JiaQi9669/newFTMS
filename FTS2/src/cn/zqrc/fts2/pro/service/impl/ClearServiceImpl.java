package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.ClearService;
import cn.zqrc.fts2.pro.vo.Clear;

/**
 * 清关
 * @author JiaQi
 *
 */
@Service
@Transactional
public class ClearServiceImpl extends BaseDaoImpl<Clear> implements ClearService{

}
