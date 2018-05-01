package zhongfucheng.service;

/**
 * Created by ozc on 2017/10/24.
 */

/**
 * 将通用的业务方法抽取到BaseService中，那么实现它的Service都有这些方法了。
 * Created by ozc on 2017/12/8.
 *
 * @author ozc
 * @version 1.0
 */

public interface BaseService<T> {

    int insert(T entity);

    int insertSelective(T entity);

    int deleteByPrimaryKey(String id);

    T selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(T entity);

    int updateByPrimaryKey(T entity);
}
