{{ autogenerate_warning }}
<!DOCTYPE html>
<html lang="en">
<head>
    {%- block head %}
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="src/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik|Underdog&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./src/css/icons.css">

    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" type="image/x-icon" >
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png" type="image/x-icon" >
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png" type="image/x-icon" >
    <link rel="manifest" href="/site.webmanifest">
    <title>{{ page_title }} | {{ comic_title }}</title>
    {%- endblock %}
</head>
<body>
{% block body %}
<header>
    <div id="logo">
        <a href="/{{ base_dir }}"></a>
    </div>
    <div id="ComicLinks">
        <div id="FirstComic"><a href="/{{ base_dir }}/comic/{{ first_id }}.html#comic-page">Page 1</a></div>
        <div id="LatestComic"><a href="/{{ base_dir }}/comic/{{ last_id }}.html#comic-page">Page {{ last_id }}</a></div>
        <div id="FirstComicFrame"><h2>Start Here</h2></div>
        <div id="Flourish"></div>
        <div id="LatestComicFrame"><h2>Latest Page</h2></div>
    </div>
    <ul id="social-links">
        <li><span>&#9753;</span></li>
        <li><a href="https://www.webtoons.com/en/challenge/tamberlane/list?title_no=372674" title="Read Tamberlane on Webtoon"><i class="icon-webtoon"><span style="color: #663403;" class="Label">&nbsp;Webtoons</span></i></a></li>
        <li><a href="http://www.twitter.com/tamberlanecomic" title="Get Updates on Twitter"><i class="icon-twitter"><span style="color: #663403;" class="Label">&nbsp;Twitter</span></i></a></li>
        <li><a href="https://www.facebook.com/groups/209745269853069/" title="Get Updates on Facebook"><i class="icon-facebook"><span style="color: #663403;" class="Label">&nbsp;Facebook</span></i></a></li>
        <li><a href="http://tamberlanecomic.tumblr.com/" title="Get Updates on Tumblr"><i class="icon-tumblr"><span style="color: #663403;" class="Label">&nbsp;Tumblr</span></i></a></li>
        <li><a href="http://www.twitch.tv/tamberlanecomic" title="Watch Comic Livestreams on Twitch"><i class="icon-twitch"><span style="color: #663403;" class="Label">&nbsp;Twitch</span></i></a></li>
        <li><a href="http://www.youtube.com/c/pixelprism" title="Watch Speeddraws on YouTube"><i class="icon-youtube-play"><span style="color: #663403;" class="Label">&nbsp;YouTube</span></i></a></li>
        <li><a href="https://www.tamberlanecomic.com/feed/"><i class="icon-rss" title="Subscribe on RSS"><span style="color: #663403;" class="Label">&nbsp;RSS</span></i></a></li>
        <li><a href="/{{base_dir}}/subscribe.html" title="Subscribe via Email"><i class="icon-envelope"><span style="color: #663403;" class="Label">&nbsp;Subscribe</span></i></a></li>
        <li><span>&#10087;</span></li>
    </ul>
    <ul id="links-menu">
        <li><h3><a href="/{{ base_dir }}/latest.html">Latest</a></h3></li>
        <li><h3><a href="/{{ base_dir }}/archive.html">Archive</a></h3></li>
        <li><h3><a href="/{{ base_dir }}/about.html">About</a></h3></li>
        <li><h3><a href="/{{ base_dir }}/cast.html">Cast</a></h3></li>
        <li><h3><a href="https://shop.tamberlanecomic.com">Shop</a></h3></li>
        <li><h3><a href="http://www.patreon.com/tamberlane">Patreon</a></h3></li>
        <li class="liveStream"><a href="http://www.twitch.tv/tamberlanecomic"><i class="icon-twitch"></i><h3>&nbsp;Now Live</h3></a></li>
    </ul>

</header>
<div id="page">
        {% block content %}{% endblock %}
</div>

<div id="footer">
    <p>Tamberlane is powered by <a href="https://github.com/ryanvilbrandt/comic_git/">comic_git</a>. &copy; Caytlin Vilbrandt, 2016 - Present.</p>
</div>

{% endblock %}
</body>
{% block script %}{% endblock %}
<script src="./src/js/main.js"></script>
</html>
