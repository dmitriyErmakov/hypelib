<#import "parts/common.ftl" as common>
<#import "parts/auth.ftl" as auth>

<@common.page>
    <@auth.logout />
    <div>Main page</div>

    <form method="post" enctype="multipart/form-data">
        <input type="text" name="title" placeholder="title" />
        <input type="text" name="author" placeholder="author" />
        <input type="text" name="yearOfPublication" placeholder="year" />
        <input type="text" name="description" placeholder="description" />
        <input type="checkbox" name="read" />
        <input type = "hidden" name = "_csrf" value="${_csrf.token}" />
        <button type = "submit">Добавить</button>
    </form>

    <div>Книги</div>
    <#list bookList as book>
        <span>${book.id}</span>
        <span>${book.title}</span>
        <span>${book.author}</span>
        <span>${book.yearOfPublication}</span>
        <span>${book.description}</span>
        <#if book.read??><span>Прочитал</span></#if>
        <span>${book.getPublisherName()}</span>
    </#list>

</@common.page>