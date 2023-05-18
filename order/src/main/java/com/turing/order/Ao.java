package com.turing.order;

import java.util.Collection;
import java.util.Properties;
import org.apache.shardingsphere.sharding.api.sharding.hint.HintShardingAlgorithm;
import org.apache.shardingsphere.sharding.api.sharding.hint.HintShardingValue;
import org.springframework.stereotype.Component;
import com.google.common.collect.Lists;

/**
 * @author jicai 2023-05-15
 */

public final class Ao implements HintShardingAlgorithm<Comparable<?>> {

    @Override
    public Collection<String> doSharding(Collection<String> availableTargetNames,
            HintShardingValue<Comparable<?>> shardingValue) {
        // 这里应该根据实际情况写 所需要的计算过程。 然后可路由结果收集并返回
        return Lists.newArrayList("ds2");
    }

    @Override
    public Properties getProps() {
        return null;
    }

    @Override
    public void init(Properties props) {

    }

}
