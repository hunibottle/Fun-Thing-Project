package org.team2.service;

import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team2.domain.ProductVO;
import org.team2.mapper.ProductMapper;

import java.util.List;
import java.util.Map;

@Service
public class ProductSerivceImpl implements ProductService {

    @Setter(onMethod_ = @Autowired)
    private ProductMapper productMapper;
    @Override
    public ProductVO getOne(Long seq) {
        ProductVO productVO = productMapper.getOne(seq);

        return productVO;
    }

    @Override
    public List<ProductVO> getAll() {
        List<ProductVO> productVOS = productMapper.getAll();

        return productVOS;
    }

    @Override
    public List<ProductVO> getAllWithCouponByFirstCategory(Long category_seq) {
        List<ProductVO> allWithCouponByFirstCategory = productMapper.getAllWithCouponByFirstCategory(category_seq);

        return allWithCouponByFirstCategory;
    }


    @Override
    public List<ProductVO> getMain() {
        List<ProductVO> mainProduct = productMapper.getMain();

        return mainProduct;
    }

    @Override
    public int insert(ProductVO productVO) {
        int insertResult = productMapper.insert(productVO);
        return insertResult;
    }

    @Override
    public int delete(ProductVO productVO) {
        int deleteResult = productMapper.delete(productVO.getProduct_seq());
        return deleteResult;
    }

    @Override
    public int update(ProductVO productVO) {
        int updateResult = productMapper.update(productVO);
        return updateResult;
    }

    @Override
    public List<Map<String, String>> getUserOrder(Long user_seq) {
        List<Map<String, String>> userProduct = productMapper.getUserOrder(user_seq);
        return userProduct;
    }


    @Override
    public Map<String, String> getProductInfo(Long order_seq) {
        Map<String, String> productInfo=productMapper.getProductInfo(order_seq);
        return productInfo;
    }
}
