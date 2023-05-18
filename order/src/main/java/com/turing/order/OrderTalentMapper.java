package com.turing.order;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author jicai 2023-04-23
 */
@Mapper
public interface OrderTalentMapper {

    int insertOrderTalent(OrderTalentEntity orderTalentEntity);

    OrderTalentEntity get(long id);

    List<OrderTalentEntity> getOrderId(long orderId);

    List<Join> getOpId(long orderId);
}
