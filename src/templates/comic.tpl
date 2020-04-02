<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="stylesheet" type="text/css" href="../src/css/comic.css">
        <link rel="stylesheet" type="text/css" href="../src/css/icons.css">
        <title>{{ page_title }} | {{ comic_title }}</title>
    </head>
    <body>
    <header>
        <div id="logo">
            <a href="http://www.tamberlanecomic.com"></a>
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
            <li><a href="http://www.webtoons.com" title="Subscribe via Email"><i class="icon-envelope"><span style="color: #663403;" class="Label">&nbsp;Subscribe</span></i></a></li>
            <li><span>&#10087;</span></li>
        </ul>
        <ul id="links-menu">
            <li><h3><a href="/latest">Latest</a></h3></li>
            <li><h3><a href="/archive">Archive</a></h3></li>
            <li><h3><a href="/about">About</a></h3></li>
            <li><h3><a href="/cast">Cast</a></h3></li>
            <li><h3><a href="https://shop.tamberlanecomic.com">Shop</a></h3></li>
            <li><h3><a href="http://www.patreon.com/tamberlane">Patreon</a></h3></li>
            <li class="liveStream"><a href="http://www.twitch.tv/tamberlanecomic"><i class="icon-twitch"></i><h3>&nbsp;Now Live</h3></a></li>
        </ul>

    </header>
    <div id="content">
        <div id="comic-page">
        <!--     Makes the comic image a Next link. -->
            <a href="/{{ base_dir }}/comic/{{ next_id }}.html#comic-page">
                <img src="/{{ base_dir }}/{{ comic_path }}" title="{{ alt_text }}"/>
            </a>
        </div>
            <div id="comic-navigation">
            <!--Disable the navigation links if you're at the first or latest comic. -->
                    {% if first_id == current_id %}
                        <a id="first-invalid">First</a>
                        <a id="previous-invalid">Previous</a>
                    {% else %}
                        <a href="/{{ base_dir }}/comic/{{ first_id }}.html#comic-page" id="first-link">First</a>
                        <a href="/{{ base_dir }}/comic/{{ previous_id }}.html#comic-page" id="previous-link">Previous</a>
                    {% endif %}
                    {% if page_name|int %}
                        <div id="page-number"><span>{{ page_name }}</span></div>
                    {% else %}
                        <div id="page-number"><span>Interlude</span></div>
                    {% endif %}
                    {% if last_id == current_id %}
                        <a id="next-invalid">Next</a>
                        <a id="latest-invalid">Last</a>
                    {% else %}
                        <a href="/{{ base_dir }}/comic/{{ next_id }}.html#comic-page" id="next-link">Next</a>
                        <a href="/{{ base_dir }}/comic/{{ last_id }}.html#comic-page" id="latest-link">Last</a>
                    {% endif %}
            </div>
        <div id="comic-support">
            <h3>Enjoying the Comic? Show Your Support!</h3>
            <div id="support-buttons">
                <div id="patreon-button"><a href="http://www.patreon.com/tamberlane">Become a Patron</a></div>
                <div id="coffee-button"><a href="http://www.ko-fi.com/justcaytlin">Buy the Creator a Coffee</a></div>
            </div>
        </div>
        <div id="comic-content">
        <!--    Comic post goes here. -->
        <!--    Commence the metadata! -->
            <div id="comic-post">
                <div id="metadata">
                    <h1>{{ page_title }}</h1>
                    <div>Posted on: {{ post_date }}</div>
                    <div id="tags">
                        Tags:
                        {% for tag in tags %}
                        <a href="/{{ base_dir }}/tagged.html?tag={{ tag }}">{{ tag }}</a>
                        {% endfor %}
                    </div>
                </div>
        <!--    Commence the post! -->
                <div id="post-content">
                {{ post_html }}
                </div>
            </div>
        </div>
    </div>
    </body>
</html>