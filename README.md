# ngxy

# 项目注意事项

## 注释

- 添加类注释
- 比较模糊的方法应添加注释
- 比较复杂的语句应添加注释

## Spring注解

因为项目全程使用spring注解，所以有些注解的使用需要注意

- @Controller：标注struts2的action
- @Scope：根据action类的作用确定spring bean的生命周期，在action类中含有变量的一律使用@Scope("prototype")，其他的可以根据情况选择是
@Scope("session")或是采用默认值。（注意并发问题）
- @Repository：标注dao组件
- @Service：标注service组件
- @Conponent：标注其他组件

## Struts2配置约定

### url名

由于使用了struts2的通配符配置action name，所以url名应该遵循一定的规则。

```
<action name="*_*" class="{1}" method="{2}">
    <result name="success">WEB-INF/jsp/${directUrl}.jsp</result>

    <!-- 配置所有方法可访问，新版本struts2添加 -->
    <allowed-methods>*</allowed-methods>
</action>
```

使用了"*_*"，所以url的样式应该为"actionClass_method"，第一个参数为action类在spring容器的id，第二个参数为处理请求的方法名。

### 返回视图

为了避免在配置文件中配置过多的action，模拟了springmvc，在方法中直接返回视图名。

所有的Action类需要继承父类BaseAction，在Action的的方法中返回父类的view(viewName)方法。

```
public String login() {
    if (loginService.login(username, password)) {
        // 返回的是视图名为：login_success
        // 具体的jsp文件路径为：WEB-INF/jsp/login_success.jsp
        return view("login_success");
    } else {
        return view("login_error");
    }
}
```

而我们只需要在struts2文件中配置一个action搞定

```
<action name="*_*" class="{1}" method="{2}">
    <result name="success">WEB-INF/jsp/${directUrl}.jsp</result>

    <!-- 配置所有方法可访问，新版本struts2添加 -->
    <allowed-methods>*</allowed-methods>
</action>
```

## Shiro使用

待续......