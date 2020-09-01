<#import "parts/common.ftlh" as c>

<@c.page>
List of Users!
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
    <td>${user.username!""}</td>
    <td></td>
</tr>
</#list>
    </tbody>
</table>
</@c.page>