<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
<div>
    <@l.logout />
</div>
<div>
    <form method="post">
        <input type="text" placeholder="Enter a message:"/>
        <input type="text" name="tag" placeholder="Tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>
<div> Список сообщений</div>
<form method="post" action="filter">
    <input type="text" name="filter">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit">Find</button>
</form>
    <#list messages as messages>
    <div>
        <b>${message.id}</b>
        <span>${message.text}}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
    <#else>
    No messages(((
    </#list>
</@c.page>