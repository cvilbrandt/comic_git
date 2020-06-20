{{ autogenerate_warning }}
<!DOCTYPE html>
<html lang="en">
<head>
    {%- block head %}
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" type="text/css" href="/{{ base_dir }}/src/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik|Underdog&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/{{ base_dir }}/src/css/icons.css">

    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">
    <link rel="mask-icon" href="safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#00aba9">
    <meta name="theme-color" content="#ffffff">

    <title>{{ page_title }} | {{ comic_title }}</title>
    {%- endblock %}
</head>
<body>
{% block body %}
<header>
    <div id="logo">
        <a href="/{{ base_dir }}/"></a>
    </div>
    <div id="mobile-menu-button"><h3>Menu</h3></div>
    <div id="mobile-menu">
        <div id="ComicLinks">
            <div id="FirstComic">
                <a href="/{{ base_dir }}/comic/{{ first_id }}/#comic-page">Page 1</a>
            </div>
            <div id="LatestComic" style="background-image:url('/{{ base_dir }}/your_content/comics/{{ last_id }}/Page_{{last_id}}_small.png');">
                <a href="/{{ base_dir }}/latest/#comic-page">Page {{ last_id }}</a>
            </div>
            <div id="FirstComicFrame"><h2>Start Here</h2></div>
            <div id="Flourish"></div>
            <div id="LatestComicFrame"><h2>Latest Page</h2></div>
        </div>
        <ul class="social-links">
            <li><span>&#9753;</span></li>
            <li><a href="https://www.webtoons.com/en/challenge/tamberlane/list?title_no=372674" title="Read Tamberlane on Webtoon"><i class="icon-webtoon"><span style="color: #663403;" class="Label">&nbsp;Webtoons</span></i></a></li>
            <li><a href="http://www.twitter.com/tamberlanecomic" title="Get Updates on Twitter"><i class="icon-twitter"><span style="color: #663403;" class="Label">&nbsp;Twitter</span></i></a></li>
            <li><a href="https://www.facebook.com/groups/209745269853069/" title="Get Updates on Facebook"><i class="icon-facebook"><span style="color: #663403;" class="Label">&nbsp;Facebook</span></i></a></li>
            <li><a href="http://tamberlanecomic.tumblr.com/" title="Get Updates on Tumblr"><i class="icon-tumblr"><span style="color: #663403;" class="Label">&nbsp;Tumblr</span></i></a></li>
            <li><a href="http://www.twitch.tv/tamberlanecomic" title="Watch Comic Livestreams on Twitch"><i class="icon-twitch"><span style="color: #663403;" class="Label">&nbsp;Twitch</span></i></a></li>
            <li><a href="http://www.youtube.com/c/pixelprism" title="Watch Speeddraws on YouTube"><i class="icon-youtube-play"><span style="color: #663403;" class="Label">&nbsp;YouTube</span></i></a></li>
            <li><a type="application/rss+xml" href="/{{ base_dir }}/feed.xml"><i class="icon-rss" title="Subscribe on RSS"><span style="color: #663403;" class="Label">&nbsp;RSS</span></i></a></li>
            <li><a href="/{{ base_dir }}/subscribe/" title="Subscribe via Email"><i class="icon-envelope"><span style="color: #663403;" class="Label">&nbsp;Subscribe</span></i></a></li>
            <li><span>&#10087;</span></li>
        </ul>
        <ul class="links-menu">
            <li><a href="comic/{{ first_id }}/#comic-page">First Comic</a></li>
            <li><a href="/{{ base_dir }}/latest/">Latest Comic</a></li>
            <li><a href="/{{ base_dir }}/archive/">Archive</a></li>
            <li><a href="/{{ base_dir }}/about/">About</a></li>
            <li><a href="/{{ base_dir }}/cast/">Cast</a></li>
            <li><a href="https://forum.tamberlanecomic.com">Forum</a></li>
            <li><a href="https://shop.tamberlanecomic.com">Shop</a></li>
            <li><a href="http://www.patreon.com/tamberlane">Patreon</a></li>
            <li class="liveStream"><a href="http://www.twitch.tv/tamberlanecomic"><i class="icon-twitch"></i>&nbsp;Now Live</a></li>
        </ul>
    </div>
    <div id="large-desktop-container"></div>
</header>
<div id="page">
        {% block content %}{% endblock %}
</div>

<div id="footer">
    <p>Tamberlane is powered by <a href="https://github.com/ryanvilbrandt/comic_git/">comic_git</a>. &copy; Caytlin Vilbrandt, 2016 - Present.</p>
    <p>Notice a typo or error in the comic? Something on the site not working? <a href="https://forum.tamberlanecomic.com/c/site-feedback/typos-and-errors/14">Submit a report here.</a></p>
</div>

{% endblock %}
</body>
{% block script %}
<script src="/{{ base_dir }}/src/js/main.js"></script>
{% endblock %}
</html>
