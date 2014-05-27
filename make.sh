#!/bin/bash

PAGES[0]=index
PAGES[1]=blog

for page in ${PAGES[@]}; do
    echo "<!DOCTYPE html>
    <html>
    <head>
    <link rel=\"stylesheet\" href=\"style.css\"/>
    <meta charset=\"utf-8\"/>
    <title>Player 1 start · Github</title>
    </head>
    <body>
    <h1>Player 1 start
    <nav>
    <a href="index.html">Home</a>
    <a href="blog.html">Blog</a>
    </nav>
    </h1>
    `markdown $page.md`
    </body>
    </html>" > $page.html
done
