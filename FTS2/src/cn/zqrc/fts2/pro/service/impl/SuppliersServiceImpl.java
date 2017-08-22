package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.vo.Suppliers;

/**
 * 供应商
 * @author JiaQi
 *
 */
@Service
@Transactional
public class SuppliersServiceImpl extends BaseDaoImpl<Suppliers> implements SuppliersService{

}
