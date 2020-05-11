{% extends "base.tpl" %}
{% block content %}
<div id="page404">
    <div id="belfry404"></div>
    <div id="content404">
        <div id="page-title"><h1>404: Page Not Found</h1></div>
        <p>Whoopsidoodle! Whatever page you were looking for, it looks like Belfry misplaced it! Sorry about that...</p>
        <p>Check the spelling in your URL, or maybe try one of these links on for size:</p>
        <p><a href="/index.html">Home</a> &nbsp;|&nbsp; <a href="/latest.html">Latest Comic</a> &nbsp;|&nbsp; <a href="https://shop.tamberlanecomic.com">Shop</a></p>
    </div>
</div>
<!--    <h1 id="page-title">&#9753; Archive &#10087;</h1>-->
<!--    <div id="archive-blurb">-->
<!--        <p>Prefer to read the archive in an infinite scroll?</p>-->
<!--        <p>I hate having to click “next” on every webpage too! If you want to just scroll through the archive without any extra effort, hit up our infinite scroll archive. <a href="/{{ base_dir }}/infinite_scroll.html">Check it out here!</a></p>-->
<!--        <p>But if you prefer to be able to comment and read commentary, the regular archive is below! Good luck on your adventure, friend!</p>-->
<!--        </p>-->
<!--    </div>-->

<!--    <div id="archive-content">-->
<!--    {%- if use_thumbnails %}-->
<!--        {%- for section in archive_sections %}-->
<!--        {%- if section.pages %}-->
<!--        <div id="archive-{{ section.name | replace(' ', '-') }}" class="archive-section">-->
<!--            <h2>{{ section.name }}</h2>-->
<!--        </div>-->
<!--        <div class="archive-grid">-->
<!--        {%- for page in section.pages %}-->
<!--            <a href="/{{ base_dir }}/comic/{{ page.page_name }}.html">-->
<!--            <div class="archive-thumbnail">-->
<!--                <div class="archive-thumbnail-page"><img src="/{{ base_dir }}/{{ page.thumbnail_path }}"></div>-->
<!--                <div class="archive-thumbnail-title">{{ page.page_title }}</div>-->
<!--                <div class="archive-thumbnail-post-date">{{ page.post_date }}</div>-->
<!--            </div>-->
<!--            </a>-->
<!--        {%- endfor %}-->
<!--        </div>-->
<!--        {%- endif %}-->
<!--        {%- endfor %}-->
<!--    {%- else %}-->
<!--    <ul>-->
<!--    {%- for section in archive_sections %}-->
<!--        {%- if section.pages %}-->
<!--        <li>{{ section.name }}-->
<!--            <ul>-->
<!--            {%- for page in section.pages %}-->
<!--                <li><a href="/{{ base_dir }}/comic/{{ page.page_name }}.html">{{ page.page_title }}</a> &#45;&#45; {{ page.post_date }}</li>-->
<!--            {%- endfor %}-->
<!--            </ul>-->
<!--        </li>-->
<!--        {%- endif %}-->
<!--    {%- endfor %}-->
<!--    </ul>-->
<!--    {%- endif %}-->
<!--    </div>-->
{% endblock %}