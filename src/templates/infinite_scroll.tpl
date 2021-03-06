{% extends "base.tpl" %}
{% block content %}
<div class="content">
    <h1 id="page-title">&#9753; Infinite Scroll Archive &#10087;</h1>
    <div id="jump-to">
        <h2>Jump to Chapter...</h2>
        <div id="jump-to-sections">
            {%- for name, pages in storylines.items() %}
            <div id="infinite-{{ name | replace(' ', '-') }}" class="infinite-section">
                <a class="chapter-links" href="#{{ pages[0].page_name }}">{{ name }}</a>
            </div>
            {%- endfor %}
        </div>
    </div>
    <div id="load-older" hidden>
        <button id="load-older-button">Load Older</button>
    </div>
    <div id="loading-infinite-scroll"><p>Loading comics...</p></div>
    <div id="infinite-scroll"></div>
    <div id="load-newer">
        <button id="load-newer-button">Load Newer</button>
    </div>
    <div id="caught-up-notification" hidden>
        <h2>Dying to read more?</h2>
        <p>Pages are posted early on Patreon!</p>
        <div class="patreon-button" class="button"><a href="http://www.patreon.com/tamberlane">Become a Patron</a></div>
    </div>
</div>
{% endblock %}
{% block script %}
<script type="module">
    import { load_page } from "../src/js/infinite_scroll.js";
    load_page();
</script>
{% endblock %}