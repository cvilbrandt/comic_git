{% extends "base.tpl" %}
{% block content %}
    <div class="content">
        <h1 id="page-title">Posts tagged with "{{ tag }}"</h1>

        <div id="archive-content">
            <div class="archive-grid">
                {%- for page in tagged_pages %}
                <a href="/{{ base_dir }}/comic/{{ page.page_name }}/">
                    <div class="archive-thumbnail">
                        <div class="archive-thumbnail-page"><img src="/{{ base_dir }}/{{ page.thumbnail_path }}" alt="{{ page.alt_text }}"></div>
                        <div class="archive-thumbnail-title">{{ page.page_title }}</div>
                        <div class="archive-thumbnail-post-date">{{ page.post_date }}</div>
                    </div>
                </a>
                {%- endfor %}
            </div>
        </div>
    </div>
{% endblock %}
