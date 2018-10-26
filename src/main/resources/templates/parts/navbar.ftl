<#import "auth.ftl" as auth>
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <a class="navbar-brand" href="/">HypeLib</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/main">Управление книгами <span class="sr-only">(current)</span></a>
            </li>
            <li class="log_out">
                <@auth.logout />
            </li>
        </ul>
    </div>
</nav>