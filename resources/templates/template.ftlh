# ${info.title}
${info.description}
**Servers**
<#list servers as server>
   * ${server.url}
</#list>

<#list tags as tag>
   **${tag.name}** *${tag.description}*
</#list>

_________________
#### POST /device ${paths["/device"].post.summary}
> **Parameters**
>
> No parameters

_________________