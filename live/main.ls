nav_menu = document.getElementById "nav_menu"
nav_collection = document.getElementById "nav_collection"

nav_menu.onclick = ->
    nav_collection.classList.toggle "visible"