---
to: src/components/<%= folder %>/<%= name.charAt(0).toUpperCase()+name.slice(1) %>/index.stories.tsx
---
<% const comp = h.inflection.undasherize(name.charAt(0).toUpperCase()+name.slice(1)) -%>
import React from 'react'
import { storiesOf } from '@storybook/react'
import { action } from '@storybook/addon-actions'
import { linkTo } from '@storybook/addon-links'
import <%= comp %> from '.'

storiesOf('<%= comp %>', module).add('default', () => <<%= comp %> />)