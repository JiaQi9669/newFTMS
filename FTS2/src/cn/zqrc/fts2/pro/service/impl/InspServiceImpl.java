package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.InspService;
import cn.zqrc.fts2.pro.vo.Insp;

/**
 * 许可证
 * @author JiaQi
 *
 */
@Service
@Transactional
public class InspServiceImpl extends BaseDaoImpl<Insp> implements InspService{

}
