let button = document.getElementById("mobile-menu-button");
let menu = document.getElementById("mobile-menu");
console.log(menu);
button.onclick = function toggleMobileMenu() {
    // If class is open, then set display to none and set innertext to Menu
    // Else set display to block and set class to open and change innertext to Hide Menu
    // if () {
    if (menu.classList.contains("open")) {
        menu.style.display = null;
        button.innerHTML = `<h3>Menu</h3>`;
        button.style.backgroundColor = "#341A09";
        button.style.color = "#f5debd";
        button.style.textShadow = "0 0 3px #F35E36";
        menu.classList.remove("open");
    } else {
        menu.style.display = "grid";
        button.innerHTML = `<h3>Hide Menu</h3>`;
        button.style.backgroundColor = "#140a05";
        button.style.color = "#c58b7a";
        button.style.textShadow = "none";
        menu.classList.add("open");
    }
    // }
};