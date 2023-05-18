package com.turing.order;

import java.util.Date;
import lombok.Data;

/**
 * @author jicai 2023-04-23
 */
@Data
public class OrderEntity {

    private Long id;

    private Long suppliersId;

    private String orderNo;

    private Date createTime;

}
