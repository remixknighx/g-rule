package com.muziyuchen.grule.action;

import com.muziyuchen.grule.Unit;

/**
 * 动作接口
 * Created by LI_ZHEN on 2016/5/5.
 */
public interface Action extends Unit {

    /**
     * 注册单元
     * @param unit 单元
     * */
    public void registerUnit(Unit unit);

}
