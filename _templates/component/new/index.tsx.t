---
to: src/components/<%= folder %>/<%= name.charAt(0).toUpperCase()+name.slice(1) %>/index.tsx
---
<% const comp = h.inflection.undasherize(name.charAt(0).toUpperCase()+name.slice(1)) -%>
<% if(locals.stateful) { -%>
import React, { Component } from 'react'
class <%= comp %> extends Component {
  render() {
    return <div>edit me: at components/<%= name %>/index.js</div>
  }
}
<% } else if(locals.functional) { -%>
import React from 'react'
const <%= comp %> = props => <div>edit me: at components/<%= name %>/index.js</div>
<% } else { -%>
import React, { PureComponent } from 'react'
class <%= comp %> extends PureComponent {
  render() {
    return <div>edit me: at components/<%= name %>/index.js</div>
  }
}
<% } -%>

export default <%= comp %>;