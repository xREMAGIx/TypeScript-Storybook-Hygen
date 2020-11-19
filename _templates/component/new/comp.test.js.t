---
to: src/components/<%= folder %>/<%= name.charAt(0).toUpperCase()+name.slice(1) %>/index.test.tsx
---
<% const comp = h.inflection.undasherize(name) %>import React from 'react'
import renderer from 'react-test-renderer'
import <%= comp %> from '.'

it('<%= comp %>: default', () => {
  const component = renderer.create(<<%= comp %> />)
  const tree = component.toJSON()
  expect(tree).toMatchSnapshot()
})
