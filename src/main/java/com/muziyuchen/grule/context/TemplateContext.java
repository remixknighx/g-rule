package com.muziyuchen.grule.context;

/**
 * @author wangjianfeng
 */
public class TemplateContext extends SimpleContext {

    /** 脚本 */
    private String groovyText;

    /** 方法名称 */
    private String methodName;

    /** 待校验的字段名称 */
    private String validParam;

    /** json格式的数据 */
    private String jsonData;

    /** 校验类型 大于，等于，小于 */
    private String validType;

    /** 阀值 */
    private Integer thresholdValue;

    public String getGroovyText() {
        return groovyText;
    }

    public void setGroovyText(String groovyText) {
        this.groovyText = groovyText;
    }

    public String getMethodName() {
        return methodName;
    }

    public void setMethodName(String methodName) {
        this.methodName = methodName;
    }

    public String getValidParam() {
        return validParam;
    }

    public void setValidParam(String validParam) {
        this.validParam = validParam;
    }

    public String getJsonData() {
        return jsonData;
    }

    public void setJsonData(String jsonData) {
        this.jsonData = jsonData;
    }

    public String getValidType() {
        return validType;
    }

    public void setValidType(String validType) {
        if (!(validType.equalsIgnoreCase("大于")
                || validType.equalsIgnoreCase("大于等于")
                || validType.equalsIgnoreCase("小于")
                || validType.equalsIgnoreCase("小于等于")
                || validType.equalsIgnoreCase("等于"))) {
            throw new IllegalArgumentException("validType参数不正确");
        }
        this.validType = validType;
    }

    public Integer getThresholdValue() {
        return thresholdValue;
    }

    public void setThresholdValue(Integer thresholdValue) {
        this.thresholdValue = thresholdValue;
    }
}
