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
1. Install the npm dependencies using `npm i`
1. Start your website with `npm start`

# Resources
What we have is a very basic setup. Usually, you'll use these resources to make a move on.
| Internal | External |
| -- | -- |
| [Setup bootstrap](http://aaa.adobe.com) | [Bootstrap 5](https://getbootstrap.com/docs/5.3/getting-started/introduction/) |
| How to use PHP services | -- |
| Code-splitting | [Webpack](https://webpack.js.org/guides/code-splitting/) |
| Use some nice Vanilla JS - Sass | [SASS Lang](https://sass-lang.com/) |