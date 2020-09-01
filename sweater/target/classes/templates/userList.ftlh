<#import "parts/common.ftlh" as c>

<@c.page>
List of users

<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Role</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <td>${user.username}</td>
        <td><#list user.roles as role>${role}<#sep>, </#list></td>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <td><a href="/user/${user.id}">edit</a></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>

<#--1. В ячейке таблицы отображается список всех ролей (<#list roles as role></#list> -->
<#--- обозначение списка во Freemarker, где первое слово(role) - название атрибута, -->
<#--в который мы передали set всех ролей в контроллере и который и будет составлять -->
<#--этот список, а второе (role) - имя каждого элемента этого списка(мы задаем его -->
<#--произвольно, чтоб в дальнейшем обратиться), as - это просто синтаксический -->
<#--соединитель этих двух слов), а в теле списка указан-->