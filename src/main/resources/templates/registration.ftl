<#import "parts/common.ftl" as common>

<@common.page>
    Add new user
    <#if message??>${message}</#if>

    <form action="/registration" method="post">
    <div><label> User Name : <input type="text" name="username" /> </label></div>
    <div><label> Password : <input type="password" name="password" /> </label></div>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <div><input type="submit" value="Reg" /></div>
    </form>
</@common.page>