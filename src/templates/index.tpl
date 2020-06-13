{% extends "base.tpl" %}
{%- block content %}
<div class="content">
    <div id="index-image"></div>
    <div id="index-about">
        <h2>Tamberlane is a webcomic about a clumsy bat and her very human baby...</h2>
        <p>The animal citizens of Treehollow have discovered a small, strange creature wandering alone in the forest:
            a human child! Clearly much too young to be on her own, it’s anyone’s guess how this mysterious being, named
            Tamberlane, ended up in their town of Treehollow.</p>
        <p>Fostered by Belfry, the accident-prone bat, and guided by a colorful cast of animal characters, Tamberlane’s
            mysteries continue to unfold. But questions burn in everyone’s minds: who, and <em>what,</em> is she? And could she
            have something to do with the far-off and unspeakable taboo, Abroad?</p>
        <p><h3>Updates every Wednesday.</h3></p>
        <p><em>Rated PG for occasional simplified, cartoonish, non-sexual nudity.</em></p>
    </div>
</div>
<div class="break"></div>
<div class="content">
    <div id="index-reviews">
        <h1>Nice Words About Tamberlane</h1>
        <div id="review-list">
            <div class="review-block">
                <p class="review">I found this web comic a month ago and I just can’t stop reading it. The characters
                    and art are all so wonderful. I know a lot of hard work and time went into this, PLEASE KEEP IT UP!</p>
                <p class="reviewer">&mdash; Ben B.</p>
            </div>
            <div class="review-block">
                <p class="review">Tamberlane is a delightfully colorful comic with a diverse cast and an intriguing and
                    heartwarming story. Reading Tamberlane is always a delight!</p>
                <p class="reviewer">&mdash; Michael "Neon Noble" Nicolosi<br><a href="http://www.kalzeria.com">Tales of Kalzeria</a></p>
            </div>
            <div class="review-block">
                <p class="review">I happened upon Tamberlane around two years ago and was in a very bad place in my life.
                    I just wanted a distraction from everything and wound up loving the comic so much it actually
                    brightened up my bleak outlook at the time. It’s so genuine and sincere about all the topics it
                    covers. 10/10 always read again!</p>
                <p class="reviewer">&mdash; Wes Odom<br><a href="https://cuteandcuddly.smackjeeves.com/">Cute and Cuddly</a></p>
            </div>
            <div class="review-block">
                <p class="review">Tamberlane’s story draws you into a world that in many ways resembles the fables of
                    antiquity, with a country village full of talking animals leading simple lives. Yet there is also a
                    mystery here, and Tamberlane herself is at the heart of it. What is she? Where does she come from,
                    and how did she get there? Caytlin brings a very familiar, emotionally resonant aspect to the tale,
                    making us feel all of Belfry the bat’s struggles in the unexpected, challenging role as a parent to
                    the unusual child. Sit down and give this story a look — you won’t be disappointed.</p>
                <p class="reviewer">&mdash; Jonas</p>
            </div>
        </div>
        <p>You can also read media reviews of Tamberlane elsewhere on the web:</p>
        <ul id="media-reviews">
            <li><a href="http://www.freakinawesomenetwork.net/2017/04/clash-of-the-webcomics-tamberlane/">Freakin' Awesome Network</a></li>
            <li><a href="https://bagogames.com/artist-interview-caytlin-vilbrandt-part-1/">BagoGames</a></li>
            <li><a href="https://webcoreview.home.blog/2019/08/09/new-kit-in-town-tamberlane/">WebcoReview</a></li>
        </ul>
        <p>Do you run a comic review blog? Submit your review of Tamberlane to <b>artist@cvilbrandt.com</b>.</p>
    </div>
</div>
<div class="break"></div>
<div class="content">
    <div id="index-shop">
        <h1>Prefer to Hold Your Comics?</h1>
        <p>Tamberlane is also available in physical form! Each chapter is printed on luscious coated paper with
        gold foil on the covers and a hefty chunk of extra content unavailable on the website.</p>
        <p>There's also e-book editions, keychains, enamel pins, stickers, t-shirts, prints, and more!</p>
        <div id="index-shop-image"><a href="https://shop.tamberlanecomic.com/collections/tamberlane"></a></div>
        <a href="https://shop.tamberlanecomic.com/collections/tamberlane"><h1>&#9753; Visit the Shop! &#10087;</h1></a>
    </div>
</div>
<div class="break"></div>
<div class="content">
    <div id="index-patrons">
        <h1>Tamberlane is supported by our lovely patrons!</h1>
        <p>Folks who support the Tamberlane Patreon get all sorts of goodies, including <a href="/{{ base_dir}}/patreon-cast.html">
            cameos in the comic,</a> monthly postcards, and early access to
            {%- if scheduled_post_count == 1 %}
                next week's page!
            {%- elif scheduled_post_count == 2 %}
                2 extra pages!
            {%- elif scheduled_post_count > 2 %}
                up to {{ scheduled_post_count }} extra pages!
            {%- else %}
                all pages before they're made public!
            {%- endif %}
            And that's only scratching the surface.</p>
        <p>More than that, patron support helps me pay my bills and hire the help I need as a disabled woman to keep
            producing this comic. Every little bit helps tremendously!</p>
        <div id="patreon-stats">
            <i class="icon-coins"></i>&nbsp;&nbsp;<span id="pledge-sum">Loading...</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-users"></i>&nbsp;&nbsp;<span id="patron-count">Loading...</span>
        </div>
        <div class="patreon-button" id="patreon-button"><a href="http://www.patreon.com/tamberlane">Become a Patron</a></div>
    </div>
</div>
<div class="break"></div>
<div class="content">
    <div id="index-patreon-thanks">
        <div id="index-patreon-special">
            <h1>Special Thanks to Long-Standing Patrons</h1>
            <p>Patrons who show extraordinary support, either in length of time or amount contributed, are added to
                the list below! Thank you so, so much for your unending enthusiasm!</p>
            <div id = "index-patreon-key"><span class="tier-6000">Adamantine Club 👑</span> |  <span class="tier-5000">Mithril Club 🌟</span> |
                <span class="tier-4000">Platinum Club ♠</span>  |  <span class="tier-3000">Gold Club ♥</span>  |
                <span class="tier-2000">Silver Club  ♣</span>  |  <span class="tier-1000">Bronze Club ♦</span></div>
        </div>
        <div id="patrons-5-years">
            <h3>5+ Years</h3>
            <ul>
                {%- for name in patreon_list[5] %}
                <li>{{ name }}</li>
                {%- endfor %}
            </ul>
        </div>
        <div id="patrons-4-years">
            <h3>4 Years</h3>
            <ul>
                {%- for name in patreon_list[4] %}
                <li>{{ name }}</li>
                {%- endfor %}
            </ul>
        </div>
        <div id="patrons-3-years">
            <h3>3 Years</h3>
            <ul>
                {%- for name in patreon_list[3] %}
                <li>{{ name }}</li>
                {%- endfor %}
            </ul>
        </div>
        <div id="patrons-2-years">
            <h3>2 Years</h3>
            <p>
                {%- for name in patreon_list[2] %}
                {{ name }}{% if not loop.last %}, {% endif %}
                {%- endfor %}
            </p>
        </div>
        <div id="patrons-1-year">
            <h3>1 Year</h3>
            <p>
                {%- for name in patreon_list[1] %}
                {{ name }}{% if not loop.last %}, {% endif %}
                {%- endfor %}
            </p>
        </div>
    </div>
</div>
{%- endblock %}
{%- block script %}
    {{ super() }}
    <script type="application/javascript">patreon_total()</script>
{%- endblock %}