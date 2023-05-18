package com.turing.order;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @author jicai 2023-04-23
 */
@Mapper
public interface OrderMapper {

    int insertOrder(OrderEntity orderEntity);

    OrderEntity get(long id);

    List<OrderEntity> limit(@Param("id") long id, @Param("end") long end);
}
