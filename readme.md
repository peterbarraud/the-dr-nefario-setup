# The Dr. Nefario setup
(Why?. Because I love that scene in `Despicable me` where `Dr. Nefario` packs all his stuff in one little suitcase and leaves)

This a barebones setup. So, you'll probably need to refer to other repos to get moving. But the idea here is to keep this setup to the minimum

You can then use the references to go in whichever direction you want - Vanilla JS, Bootstrap, JQuery or whatever else.

(Preferably run the steps 1 to 3 in `Git bash`)
1. Clone this repo
1. cd into the resultant folder
1. Open in a code editor
1. Start mariaDB: `db.start.bat`
1. Login: `login.root.bat`
1. Open `backoffice/services/db.sql` and change db stuff as/if required - maybe db name
1. Paste the contents into the mysql prompt
1. Start php: `php.start.bat`
1. Go to your browser and try out: `http://localhost:8089/services/rest.api.php/getuserlist`. It should show an empty list - [] (NO ERRORS)
1. Install the npm dependencies using `npm i`
1. Start your website with `npm start`

# Resources
What we have is a very basic setup. Usually, you'll use these resources to make a move on.
| Internal | External |
| -- | -- |
| [Setup bootstrap](https://github.com/peterbarraud/the-dr-nefario-setup/blob/main/internal-resources/bootstrap.md) | [Bootstrap 5](https://getbootstrap.com/docs/5.3/getting-started/introduction/) |
| [Using the Backoffice services](https://github.com/peterbarraud/the-dr-nefario-setup/blob/main/backoffice/readme.md) | -- |
| [Code-splitting](https://github.com/peterbarraud/the-dr-nefario-setup/blob/main/internal-resources/code.splitting.md) | [Webpack](https://webpack.js.org/guides/code-splitting/) |
| [Use some nice Vanilla Sass](https://github.com/peterbarraud/the-dr-nefario-setup/blob/main/internal-resources/sass.md) | [SASS Lang](https://sass-lang.com/) |

# To setup Bootstrap

1 . `npm` Install: `npm i bootstrap --save`
1. Go to src/scss/styles.scss
1. Add this to the top of the page - `@use "bootstrap/scss/bootstrap";`

That's it!!!

Now get started with [Bootstrap](https://getbootstrap.com/docs/5.3/getting-started/introduction/)

**IMPORTANT** Right now, we get some horrid warning for Boostratp
```
Module Warning (from ./node_modules/sass-loader/dist/cjs.js):
Deprecation Warning on line 0, column 8 of file:///C:/Users/barraud/Documents/tech-stuff/the-dr-nefario-setup/node_modules/bootstrap/scss/bootstrap.scss:0:8:
Sass @import rules are deprecated and will be removed in Dart Sass 3.0.0.
```