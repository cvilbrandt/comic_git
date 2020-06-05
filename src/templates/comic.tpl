<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
<!--        <meta http-equiv="Content-Security-Policy" content="default-src 'self'; script-src forum.tamberlanecomic.com;">-->
        <link rel="stylesheet" type="text/css" href="../src/css/comic.css">
        <link rel="stylesheet" type="text/css" href="../src/css/icons.css">
        <link href="https://fonts.googleapis.com/css?family=Rubik|Underdog&display=swap" rel="stylesheet">

        <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
        <link rel="manifest" href="site.webmanifest">
        <link rel="mask-icon" href="safari-pinned-tab.svg" color="#5bbad5">
        <meta name="msapplication-TileColor" content="#00aba9">
        <meta name="theme-color" content="#ffffff">
        <title>{{ page_title }} | {{ comic_title }}</title>
    </head>
    <body>
    <header>
        <div id="logo">
            <a href="/{{ base_dir }}"></a>
        </div>
        <div id="mobile-menu-button"><h3>Menu</h3></div>
        <div id="mobile-menu">
            <ul class="social-links">
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
            <ul class="links-menu">
                <li><h3><a href="/{{ base_dir }}/comic/{{ first_id }}.html#comic-page">First Comic</a></h3></li>
                <li><h3><a href="/{{ base_dir }}/latest.html">Latest Comic</a></h3></li>
                <li><h3><a href="/{{ base_dir }}/archive.html">Archive</a></h3></li>
                <li><h3><a href="/{{ base_dir }}/about.html">About</a></h3></li>
                <li><h3><a href="/{{ base_dir }}/cast.html">Cast</a></h3></li>
                <li><h3><a href="https://shop.tamberlanecomic.com">Shop</a></h3></li>
                <li><h3><a href="http://www.patreon.com/tamberlane">Patreon</a></h3></li>
                <li class="liveStream"><a href="http://www.twitch.tv/tamberlanecomic"><i class="icon-twitch"></i><h3>&nbsp;Now Live</h3></a></li>
            </ul>
        </div>

    </header>
    <div id="page">
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
                        <a href="/{{ base_dir }}/latest.html#comic-page" id="latest-link">Last</a>
                    {% endif %}
            </div>
        <div id="comic-support">
            <h3>Enjoying the Comic? Show Your Support!</h3>
            <div id="support-buttons">
                <div id="patreon-button" class="button"><a href="http://www.patreon.com/tamberlane">Become a Patron</a></div>
                <div id="coffee-button" class="button"><a href="http://www.ko-fi.com/justcaytlin">Buy the Creator a Coffee</a></div>
                <div id="share-button" class="button"><i class="icon-copy"></i><span style="font-family: 'Rubik', sans-serif;">&nbsp;&nbsp;Share the Comic</span></div>
            </div>
        </div>
        <div id="copy-modal">
            <p id="copy-info">Copied URL!</p>
        </div>
        <div id="comic-content">
        <!--    Comic post goes here. -->
        <!--    Commence the metadata! -->
            <div id="comic-post">
                <div id="metadata">
                    <h1>{{ page_title }}</h1>
                    <div><p id="postdate">Posted on {{ post_date }}</p></div>
                    {%- if storyline %}
                        <p id="storyline">
                            Chapter: <a href="/{{ base_dir }}/comic/{{ storyline_id }}.html#comic-page">{{ storyline }}</a>
                        </p>
                    {%- endif %}
                    {%- if characters %}
                        <p id="characters">
                        Characters:
                        {%- for character in characters %}
                            <a href="/{{ base_dir }}/tagged.html?tag={{ character }}">{{ character }}</a>{% if not loop.last %}, {% endif %}
                        {%- endfor %}
                        </p>
                    {%- endif %}
                    {%- if tags %}
                        <p id="tags">
                        Tags:
                        {%- for tag in tags %}
                            <a class="tag-link" href="/{{ base_dir }}/tagged.html?tag={{ tag }}">{{ tag }}</a>{% if not loop.last %}, {% endif %}
                        {%- endfor %}
                        </p>
                    {%- endif %}
                </div>
        <!--    Commence the post! -->
                <div id="post-content">
                    <h3>Author's Notes:</h3>
                    <p>{{ post_html }}</p>

                    {% if transcripts %}
                    <div id="transcripts-container">
                        <div id="transcript-panel">
                            <h3>Transcript</h3>
                            <div id="active-transcript">
                            {% for language, transcript in transcripts.items() %}
                                <div id='{{ language }}-transcript'>
                                    <p>{{ transcript }}</p>
                                </div>
                            {% endfor %}
                            </div>
                        </div>
                        <div id="language-list">
                            <h3>Languages</h3>
                            <select id="language-select" size="7">
                                {% for language in transcripts.keys() %}
                                <option>{{ language }}</option>
                                {% endfor %}
                            </select>
                        </div>
                    </div>
                    {% endif %}
                    <div id="submit-transcript-button" class="button"><a href='https://github.com/cvilbrandt/tamberlane-transcripts/tree/master/{{ current_id }}'>Submit a Transcript</a></div>
                </div>
                <div id='discourse-comments'></div>

                <script type="text/javascript">
                    let pageID = {{ current_id|tojson }};
                    DiscourseEmbed = { discourseUrl: 'https://forum.tamberlanecomic.com/',
                        discourseEmbedUrl: `http://localhost:8023/comic_git/comic/` + pageID + `.html` };
                    console.log(DiscourseEmbed);

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
    <script src="../src/js/comic.js"></script>
    </body>
</html>