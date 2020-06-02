{% extends "base.tpl" %}
{% block content %}
    <div class="content">
        <h1 id="page-title">&nbsp;</h1>

        <div id="archive-content">
            <div id="tagged">Loading tags...</div>
        </div>
    </div>
{% endblock %}
{% block script %}
<script type="module">
    import { load_page } from "./src/js/tagged.js";
    load_page();
</script>
{% endblock %}