<#import "parts/common.ftl" as common>

<@common.page>
    <h1>Авторизация</h1>
    <div class="login_form">
        <form action="/login" method="post">
            <div class="row">
                <div class="col-lg-12 col">
                    <label>
                        <div class="row">
                            <div class="col-12 col-lg-6 align-self-center">Логин : </div>
                            <div class="col-12 col-lg-6"><input type="text" name="username" placeholder="Логин"/></div>
                        </div>
                    </label>
                </div>
                <div class="col-lg-12 col">
                    <label>
                        <div class="row">
                            <div class="col-12 col-lg-6 align-self-center">Пароль :</div>
                            <div class="col-12 col-lg-6"><input type="password" name="password" placeholder="Пароль"/></div>
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
        <div class="row go-reg justify-content-md-center">
            <div class="col-6">Не зарегестрированы?</div>
            <div class="col-6"><a href="/registration">Зарегестрироваться</a></div>
        </div>
        <#if message??>${message}</#if>
    </div>

</@common.page>