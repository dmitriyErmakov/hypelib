<#import "parts/common.ftl" as common>

<@common.page>
    <a href="/registration">Add new user</a>
    <div class="login_form">
        <h1>Авторизация</h1>
        <form action="/login" method="post">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <label>
                        <div class="row">
                            <div class="col-6 align-self-center">Логин : </div>
                            <div class="col-6"><input type="text" name="username" placeholder="Логин"/></div>
                        </div>
                    </label>
                </div>
                <div class="col-lg-12 col-12">
                    <label>
                        <div class="row">
                            <div class="col-6 align-self-center">Пароль :</div>
                            <div class="col-6"><input type="password" name="password" placeholder="Пароль"/></div>
                        </div>
                    </label>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <div class="row justify-content-center btn_form_login">
                    <div class="col">
                        <input class="btn_login" type="submit" value="Войти"/>
                    </div>
                </div>
            </div>
        </form>
    </div>
</@common.page>