let XHR;
let client_ID = "ai39gxsqlfglpxv89jb3abka37vdpe";
let response;

let navLivestream = document.getElementsByClassName("liveStream");
function isLive(response) {
    if (response.data[0]) {
        navLivestream[0].style.display = "grid";
    } else {
        navLivestream[0].style.display = "none";
    }
}

XHR = new XMLHttpRequest();
XHR.open("GET", "https://api.twitch.tv/helix/streams/?user_login=tamberlanecomic");
XHR.setRequestHeader('Client-ID', client_ID);

XHR.send();
XHR.onload = function() {
    response = JSON.parse (this.response);
    isLive(response);
    console.log(response);
};

let pledge_sum = document.getElementById("pledge-sum");
let patron_count = document.getElementById("patron-count");
console.log(pledge_sum);

const formatter = new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
    minimumFractionDigits: 0
});

XHR = new XMLHttpRequest();
XHR.open("GET", "https://patreon.cvilbrandt.com/get_patreon_count.php");
XHR.send();
console.log(XHR.response);
XHR.onload = function() {
    response = JSON.parse (this.response);
    let sum = formatter.format((response.pledge_sum/100));
    let fetch_pledge_sum = sum.substr(0,sum.length-3);
    let fetch_patron_count = response.patron_count + " Patrons";
    pledge_sum.innerText = fetch_pledge_sum;
    patron_count.innerText = fetch_patron_count;
};

XHR = new XMLHttpRequest();
XHR.open("GET", "/comic_git/comic/page_info_list.json");
XHR.send();
XHR.onload = function() {
    let response = JSON.parse(this.response);
    let scheduled_posts = response.scheduled_post_count;
    let scheduled_text;

    if (scheduled_posts === 1 ) {
        scheduled_text = "next week's page!"
    } else if (scheduled_posts === 2) {
        scheduled_text = "2 extra pages!"
    } else if (scheduled_posts > 2 ) {
        scheduled_text = "up to " + scheduled_posts + " extra pages!"
    } else {
        scheduled_text = "all pages before they're made public!"
    }

    document.getElementById("patreon-buffer").innerText = scheduled_text;
};