package com.muziyuchen.grule.action;

import com.muziyuchen.grule.Unit;

/**
 * 抽象动作类
 * @author LI_ZHEN
 */
public abstract class AbstractAction implements Action {

    protected Unit _unit;

    @Override
    public final void registerUnit(Unit unit) {
        this._unit = unit;
    }

    @Override
    public final Unit next() {
        return _unit;
    }
}
