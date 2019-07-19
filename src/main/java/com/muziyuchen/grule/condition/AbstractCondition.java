package com.muziyuchen.grule.condition;

import com.muziyuchen.grule.Unit;

/**
 * 抽象条件类
 * Created by LI_ZHEN on 2016/5/5.
 */
public abstract class AbstractCondition implements Condition {

    protected Unit _trueUnit = null;

    protected Unit _falseUnit = null;

    @Override
    public final void registerTrueUnit(Unit unit) {
        this._trueUnit = unit;
    }

    @Override
    public final void registerFalseUnit(Unit unit) {
        this._falseUnit = unit;
    }

    @Override
    public final Unit next() {
        if (this.getResult()) {
            return this._trueUnit;
        } else {
            return this._falseUnit;
        }
    }
}
