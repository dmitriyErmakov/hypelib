<#import "parts/common.ftl" as common>

<@common.page>
    <div>Main page</div>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Sign Out"/>
    </form>
</@common.page>