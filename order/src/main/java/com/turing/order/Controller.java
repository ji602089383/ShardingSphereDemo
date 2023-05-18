package com.turing.order;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.apache.shardingsphere.infra.hint.HintManager;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import lombok.extern.slf4j.Slf4j;

/**
 * @author jicai 2023-04-23
 */
@RestController
@RequestMapping("/test")
@Slf4j
public class Controller {

    @Resource
    private OrderMapper orderMapper;

    @Resource
    private OrderTalentMapper orderTalentMapper;

    @GetMapping("/test/{id}")
    public void test(@PathVariable Long id){
        log.info("开始插入");
        OrderEntity orderEntity = new OrderEntity();
        orderEntity.setId(id);
        orderEntity.setOrderNo("1");
        orderEntity.setCreateTime(new Date());
        orderEntity.setSuppliersId(id);
        //  官方推荐用 try with resource 减少没有关闭清空资源的错误
        try (HintManager hintManager = HintManager.getInstance()){
            hintManager.addDatabaseShardingValue("order", "C");
            hintManager.addDatabaseShardingValue("order", "B");
            hintManager.addDatabaseShardingValue("order", "F");
            hintManager.addTableShardingValue("order", 3);
            hintManager.addTableShardingValue("order", 2);
            hintManager.addTableShardingValue("order", 1);
            System.out.println(orderMapper.insertOrder(orderEntity));
        }
        System.out.println(orderEntity.getId());
    }

    @GetMapping("/look/{id}")
    public OrderEntity look(@PathVariable("id") Long id){
        return orderMapper.get(id);
    }


    @GetMapping("/talentTest/{userId}")
    public void talentTest(@PathVariable Long userId){
        HintManager hintManager = HintManager.getInstance();
        hintManager.setDatabaseShardingValue(1);
        log.info("开始插入");
        OrderTalentEntity orderTalentEntity = new OrderTalentEntity();
        orderTalentEntity.setOrderId(userId);
        orderTalentEntity.setId(userId);
        System.out.println(orderTalentMapper.insertOrderTalent(orderTalentEntity));
        System.out.println(orderTalentEntity.getId());
        hintManager.close();
    }

    /**
     *  单表查询
     */
    @GetMapping("/talentLook/{id}")
    public OrderTalentEntity talentLook(@PathVariable("id") Long id){
        return orderTalentMapper.get(id);
    }

    /**
     *  多数据查询
     */
    @GetMapping("/talentLookOrderId/{id}")
    public List<OrderTalentEntity> talentLookOrderId(@PathVariable("id") Long id){
        return orderTalentMapper.getOrderId(id);
    }

    /**
     *  联表查询
     */
    @GetMapping("/talentLookOrder/{id}")
    public List<Join> talentLookOrder(@PathVariable("id") Long id){
        return orderTalentMapper.getOpId(id);
    }

}
