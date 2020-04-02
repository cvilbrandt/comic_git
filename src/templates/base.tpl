{{ autogenerate_warning }}
<!DOCTYPE html>
<html lang="en">
<head>
    {%- block head %}
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../src/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik|Underdog&display=swap" rel="stylesheet">
<!--    <link rel="stylesheet" type="text/css" href="/{{ base_dir }}/your_content/colors_and_layout/your_stylesheet.css">-->
    <link rel="icon" href="/{{ base_dir }}/favicon.ico" type="image/x-icon" />
    <title>{{ page_title }} - {{ comic_title }}</title>
    {%- endblock %}
</head>
<body>
{% block body %}
<div id="container">
    <div id="header">
        <div id="logo">  <a href="http://www.tamberlanecomic.com"><span></span></a></div>
        <ul id="socialLinks">
            <li><a href="https://www.webtoons.com/en/challenge/tamberlane/list?title_no=372674" title="Read Tamberlane on Webtoon"><i class="icon-webtoon"><span style="color: #663403;" class="Label">&nbsp;Webtoons</span></a></i></li>
            <li><a href="https://tapas.io/series/Tamberlane" title="Read Tamberlane on Tapas"><i class="icon-tapas"><span style="color: #663403;" class="Label">&nbsp;Tapas</span></i></a></li>
            <li><a href="http://www.twitter.com/tamberlanecomic" title="Get Updates on Twitter"><i class="icon-twitter"><span style="color: #663403;" class="Label">&nbsp;Twitter</span></i></a></li>
            <li><a href="https://www.facebook.com/groups/209745269853069/" title="Get Updates on Facebook"><i class="icon-facebook"><span style="color: #663403;" class="Label">&nbsp;Facebook</span></i></a></li>
            <li><a href="http://tamberlanecomic.tumblr.com/" title="Get Updates on Tumblr"><i class="icon-tumblr"><span style="color: #663403;" class="Label">&nbsp;Tumblr</span></i></a></li>
            <li><a href="http://www.twitch.tv/tamberlanecomic" title="Watch Comic Livestreams on Twitch"><i class="icon-twitch"><span style="color: #663403;" class="Label">&nbsp;Twitch</span></i></a></li>
            <li><a href="http://www.youtube.com/c/pixelprism" title="Watch Speeddraws on YouTube"><i class="icon-youtube"><span style="color: #663403;" class="Label">&nbsp;YouTube</span></i></a></li>
            <li><a href="https://www.tamberlanecomic.com/feed/"><i class="icon-rss" title="Subscribe on RSS"><span style="color: #663403;" class="Label">&nbsp;RSS</span></i></a></li>
            <li><a href="http://www.webtoons.com" title="Subscribe via Email"><i class="icon-envelope"><span style="color: #663403;" class="Label">&nbsp;Subscribe</span></i></a></li>
        </ul>
        <ul id="navMenu">
            <li><h3><a href="/latest">Latest</a></h3></li>
            <li><h3><a href="/archive">Archive</a></h3></li>
            <li><h3><a href="/about">About</a></h3></li>
            <li><h3><a href="/cast">Cast</a></h3></li>
            <li><h3><a href="https://shop.tamberlanecomic.com">Shop</a></h3></li>
            <li><h3><a href="http://www.patreon.com/tamberlane">Patreon</a></h3></li>
            <li class="liveStream"><a href="http://www.twitch.tv/tamberlanecomic"><i class="icon-twitch"></i><h3>&nbsp;Now Live</h3></a></li>
        </ul>
    </div>

    {% block content %}{% endblock %}

    <div id="powered-by">
        Powered by <a id="powered-by-link" href="https://github.com/ryanvilbrandt/comic_git">comic_git</a>
    </div>
</div>
{% endblock %}
</body>
{% block script %}{% endblock %}
</html>
