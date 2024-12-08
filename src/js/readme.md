# How to split your JS
1. Let's use the sample module `src/js/sample.code.splitting/users.js`
1. Go to the webpack config, and include `users` entry:
```
  entry: {
    index: './src/js/main.js',
    users:'./src/js/users.js'
  },
```
3. Now import this module using the following at the top of `main.js`
```
import {validateUser} from './users'
```
4. Call `validateUser` in `main.js`

