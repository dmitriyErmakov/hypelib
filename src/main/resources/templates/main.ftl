<#import "parts/common.ftl" as common>

<@common.page>
    <h1>Главная</h1>

    <div class="title-create-book">
        <h5>Добавить книгу</h5>
        <form method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col-6">Название книги :</div>
                <div class="col-6"><input type="text" name="title" placeholder="title" /></div>
            </div>
            <div class="row">
                <div class="col-6">Автор книги :</div>
                <div class="col-6"><input type="text" name="author" placeholder="author" /></div>
            </div>
            <div class="row">
                <div class="col-6">Дата публикации :</div>
                <div class="col-6"><input type="text" name="yearOfPublication" placeholder="year" /></div>
            </div>
            <div class="row">
                <div class="col-12">Краткое описание :</div>
                <div class="col-12"><textarea type="text" name="description"></textarea></div>
            </div>
            Уже читал(а) книгу ?
            <input type="checkbox" name="read" />
            <input type = "hidden" name = "_csrf" value="${_csrf.token}" />
            <div class="for-btn-create"><button class="btn_login" type = "submit">Добавить</button></div>
        </form>
    </div>
</@common.page>