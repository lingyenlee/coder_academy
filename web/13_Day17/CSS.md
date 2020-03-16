# Intro to CSS

## SCREENFLOW

Change the colors in this error message to indicate something is wrong, give it a red background with white text
Bonus: Use hex & rbga colors

<p style="color: white; background: red" >
    The username or password you entered is incorrect. Please try again!
</p>

Modify the above code so it is styled using a class instead of inline styles
Questions:
What's the difference between a class & an id
How would you style a paragraph that doesn't have a class? -->

<style>
    .error-text {
        color: white;
        background: light-red
    }
</style>

<p class="error-text" >
    The username or password you entered is incorrect. Please try again!
</p>

Modify the html/css so that the third list item is green
Questions:
Do styles from a parent element translate to the child element?

<style>
    li {
        color: purple;
    }
    .green-item {
        color: green;
    }
</style>

<ul>
    <li>Apple</li>
    <li>Orange</li>
    <li class="green-item">Peach</li>
</ul>

Change the text below to use the Courier New font, also increase the text size and adjust the font weight

<style>
    .address {
        font-family: "Courier New", Courier, monospace;
        font-size: 30px; /* 2em */
        font-weight: bold;
    }
</style>

<p class="address">30 deer road, Sydney, NSW, Australia</p>

_Style the paragraphs below so they have padding and margins _

<style>
    .address {
        padding: 20px;
        margin: 40px;
    }
</style>

<p class="address">30 deer road, Sydney, NSW, Australia</p>
<p class="address">50 pond street, Sydney, NSW, Australia</p>

Modify the div below to have different sizes (px, %, em)

_Style the paragraphs below so they have padding and margins _

<style>
    .box {
        width: 50%;
        height: 100px;
    }
</style>

<p class="address">30 deer road, Sydney, NSW, Australia</p>
<p class="address">50 pond street, Sydney, NSW, Australia</p>

Modify the input below to have a border, border radius, and box shadow

<style>
    .search-box {
        border: 2px solid grey;
        border-radius: 15px;
        box-shadow: 2px 2px 10px black;
    }
</style>

<input type="text" class="search-box">

Modify the unordered list so the items are aligned horizontally
Questions:
What's the difference between inline and inline-block displays

<style>
    li {
        display: inline-block
    }
</style>

<ul>
    <li>Apple</li>
    <li>Orange</li>
    <li>Peach</li>
</ul>

Modify the divs below to demonstrate the different position types in css (static, absolute, relative, fixed)

<style>
    .box {
        width: 100px;
        height: 100px;
        background: blue;
    }

    .d-absolute {
        position: absolute;
        right: 0px;
        bottom: 0px;
    }
    .d-relative {
        position: relative;
        right: 10px;
        bottom: 10px;
    }
    .d-fixed {
        position: fixed;
        left: 20px;
        top: 0px;
    }
</style>

<div class="box"></div>
<div class="box d-absolute"></div>
<div class="box d-relative"></div>
<div class="box d-fixed"></div>

Write the code for linking to an external style sheet

<head>
    <link rel="stylesheet" type="text/css" href="./style.css">
</head>
