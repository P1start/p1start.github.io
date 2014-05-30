#!/bin/bash

PAGES[0]=index
PAGES[1]=blog

for page in ${PAGES[@]}; do
    echo "<!DOCTYPE html>
    <html>
    <head>
    <link rel=\"stylesheet\" href=\"/normalize.css\"/>
    <link rel=\"stylesheet\" href=\"/style.css\"/>
    <meta charset=\"utf-8\"/>
    <title>Player 1 start · Github</title>
    </head>
    <body>
    <header>
    <h1><a href=\"/\"> Player 1 start</a>
    <span class=\"hint\">» menu</span>
    <nav>
    <a href="/index.html">Home</a>
    <a href="/blog.html">Blog</a>
    <a href="https://github.com/P1start">GitHub</a>
    </nav>
    </h1>
    </header>
    <div id=\"main\">
    <section>
    `markdown $page.md`
    </section>
    </div>
    <footer>
    Licensed under the <a href=\"https://gnu.org/licenses/gpl.html\">GNU General Public License</a>.<br/>
    Last updated 2014.
    </footer>
    </body>
    </html>" > $page.html
done
