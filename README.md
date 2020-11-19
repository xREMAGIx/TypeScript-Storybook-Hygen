# Front End React Template with TypeScript, Storybook and Hygen follow Atomic Design

_Project folder must be without any white space or hygen-add cra will fail_

## Create React App with TypeScript template

`npx create-react-app *<project-name>* --template typescript`

## Add Storybook and babel in devDependencies

`yarn add @storybook/react -D`

`yarn add babel-loader @babel/core -D`

## Config Storybook

Create .storybook folder and create the file main.js inside

```
module.exports = {
     stories: ['../src/**/*.stories.tsx']
};
```

Config scss preset for Storybook: install preset add the following to .storybook/main.js

`yarn add -D @storybook/preset-scss css-loader sass-loader style-loader`

```
module.exports = {
  addons: ['@storybook/preset-scss'],
};
```

Config new preset cra in version 6.0 and add it in addons in .storybook/main.js

`yarn add @storybook/preset-create-react-app`

```
module.exports = {
  addons: ['@storybook/preset-create-react-app'],
};
```

Install a convenient test renderer for React

`yarn add --dev react-test-renderer`

## Add Hygen in devDependencies

`yarn add --dev hygen`

Add Hygen package manager

`yarn add -D hygen-add`

Create new \_template folder and generators

`hygen init self`

Create new component generator
`yarn hygen-add cra`

### Create Hygen template

Add script to package.json
` "gen:component": "hygen component new --functional"`

Modify template component generator as files in folder

_Document Links_
Enquirer for hygen prompt: https://github.com/enquirer/enquirer
