package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.BrandService;
import cn.zqrc.fts2.pro.vo.Brand;

/**
 * 品牌管理
 * @author JiaQi
 *
 */
@Service
@Transactional
public class BrandServiceImpl extends BaseDaoImpl<Brand> implements BrandService{

}
