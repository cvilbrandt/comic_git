<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
<!--        <meta http-equiv="Content-Security-Policy" content="default-src 'self'; script-src forum.tamberlanecomic.com;">-->
        <link rel="stylesheet" type="text/css" href="../src/css/comic.css">
        <link rel="stylesheet" type="text/css" href="../src/css/icons.css">
        <title>{{ page_title }} | {{ comic_title }}</title>
    </head>
    <body>
    <header>
        <div id="logo">
            <a href="/{{ base_dir }}"></a>
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
            <li><h3><a href="/{{ base_dir }}/latest.html">Latest</a></h3></li>
            <li><h3><a href="/{{ base_dir }}/archive.html">Archive</a></h3></li>
            <li><h3><a href="/{{ base_dir }}/about.html">About</a></h3></li>
            <li><h3><a href="/{{ base_dir }}/cast.html">Cast</a></h3></li>
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
                        <div id="page-interlude"><span>Interlude</span></div>
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
                <div id="share-button"><a href="">Share the Comic</a></div>
            </div>
        </div>
        <div id="comic-content">
        <!--    Comic post goes here. -->
        <!--    Commence the metadata! -->
            <div id="comic-post">
                <div id="metadata">
                    <h1>{{ page_title }}</h1>
                    <div><p id="postdate">Posted on {{ post_date }}</p></div>
                    <div id="tags">
                        <p>Chapter: <a href="/{{ base_dir }}/tagged.html?tag={{ tags[0] }}">{{ tags[0] }}</a></p>
                        <p>Tags:
                        {% for tag in tags[1:] %}
                        <a href="/{{ base_dir }}/tagged.html?tag={{ tag }}">{{ tag }}</a>
                            {%- if not loop.last -%}
                            ,
                            {% endif %}
                        {% endfor %}
                        </p>
                    </div>
                </div>
        <!--    Commence the post! -->
                <div id="post-content">
                    <em>Author's Notes:</em>
                    <p>{{ post_html }}</p>
                </div>
                <div id='discourse-comments'></div>

                <script type="text/javascript">
                    DiscourseEmbed = { discourseUrl: 'https://forum.tamberlanecomic.com/',
                        discourseEmbedUrl: 'http://localhost:63342/comic_git/comic/{{ page_id }}.html' };

                    (function() {
                        var d = document.createElement('script'); d.type = 'text/javascript'; d.async = true;
                        d.src = DiscourseEmbed.discourseUrl + 'javascripts/embed.js';
                        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(d);
                    })();
                </script>
            </div>
        </div>
    </div>
    <div id="footer">
        <p>Tamberlane is designed with <a href="https://github.com/ryanvilbrandt/comic_git/">comic_git</a>. &copy; Caytlin Vilbrandt, 2016 - Present.</p>
    </div>
    </body>
</html>