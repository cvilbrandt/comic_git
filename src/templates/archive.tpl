{% extends "base.tpl" %}
{% block content %}
<div class="content">
    <h1 id="page-title">&#9753; Archive &#10087;</h1>
    <div id="archive-blurb">
        <h2>Prefer to read the archive in an infinite scroll?</h2>
        <p>I hate having to click “next” on every webpage too! If you want to just scroll through the archive without any extra effort, hit up our infinite scroll archive. <a href="/{{ base_dir }}/infinite_scroll.html">Check it out here!</a></p>
        <p>But if you prefer to be able to comment and read commentary, the regular archive is below! Good luck on your adventure, friend!</p>
        </p>
         <h2 id="jump-to">Jump to Chapter...</h2>
        <div id="archive-navigation">
            {%- for storyline in storylines %}
            <div id="archive-icon-{{ storyline.name | replace(' ', '-') }}" class="archive-icon-section">
                <a class="chapter-links" href="archive.html#archive-{{ storyline.name | replace(' ', '-') }}">{{ storyline.name }}</a>
            </div>
            {%- endfor %}
        </div>
    </div>

    <div id="archive-content">
    {%- if use_thumbnails %}
        {%- for storyline in storylines %}
        {%- if storyline.pages %}
        <div class="archive-banner-container">
            <div class="archive-banner-clear"></div>
            <a id="archive-{{ storyline.name | replace(' ', '-') }}" class="archive-section">
    <!--            <img src="your_content/images/Chapter Clear.png">-->
                <h2>{{ storyline.name }}</h2>
            </a>
            <div class="archive-banner-clear"></div>
        </div>
        <div class="archive-grid">
        {%- for page in storyline.pages %}
            <a href="/{{ base_dir }}/comic/{{ page.page_name }}.html">
            <div class="archive-thumbnail">
                <div class="archive-thumbnail-page"><img src="/{{ base_dir }}/{{ page.thumbnail_path }}"></div>
                <div class="archive-thumbnail-title">{{ page.page_title }}</div>
                <div class="archive-thumbnail-post-date">{{ page.post_date }}</div>
            </div>
            </a>
        {%- endfor %}
        </div>
        {%- endif %}
        {%- endfor %}
    {%- else %}
    <ul>
    {%- for storyline in storylines %}
        {%- if storyline.pages %}
        <li>{{ storyline.name }}
            <ul>
            {%- for page in storyline.pages %}
                <li><a href="/{{ base_dir }}/comic/{{ page.page_name }}.html">{{ page.page_title }}</a> -- {{ page.post_date }}</li>
            {%- endfor %}
            </ul>
        </li>
        {%- endif %}
    {%- endfor %}
    </ul>
    {%- endif %}
    </div>
</div>
{% endblock %}