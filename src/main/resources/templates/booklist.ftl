<#import "parts/common.ftl" as common>

<@common.page>
    <div class="list-books">
        <div class="container">
            <h5>Публикации Книг</h5>
            <div class="row">
            <#list bookList as book>
                <div class="col-6">
                    <div class="book-item">
                        <div class="title-book">${book.title}</div>
                        <div class="author-book">Автор: <span>${book.author}</span></div>
                        <div class="year-pub-book">Дата публикации: <span>${book.yearOfPublication}</span></div>
                        <div class="desc-book">
                            Краткое описание:
                            <div><span>${book.description}</span></div>
                        </div>
                        <#if book.read == true><span>Прочитал</span></#if>
                        <div class="pub-name-book">Опубликовал(а): <span>${book.publisherName}</span></div>
                    </div>
                </div>
            </#list>
            </div>
        </div>
    </div>
</@common.page>