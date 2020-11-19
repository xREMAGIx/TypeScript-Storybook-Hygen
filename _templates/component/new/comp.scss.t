---
to: src/components/<%= folder %>/<%= name.charAt(0).toUpperCase()+name.slice(1) %>/index.scss
---
<% const comp = h.inflection.undasherize(name.charAt(0).toUpperCase()+name.slice(1)) -%>
.<%= folder.charAt(0) %>-<%= name %>{

}