# ${info.title}
${info.description}
**Servers**
<#list servers as server>
   * ${server.url}
</#list>
## Tags
<#list tags as tag>
   * **${tag.name}** ${tag.description}
</#list>
# ${paths.device}