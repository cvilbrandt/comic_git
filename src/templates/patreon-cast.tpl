{% extends "base.tpl" %}
{% block content %}
<div class="content">
    <div id="patreon-cast-about">
        <h1 id="page-title">&#9753; Full Patreon Cast &#10087;</h1>
        <p>While the main <a href="cast.html">Cast page</a> details all of the patreon cameos that have recognizable
            speaking parts, there are many more patrons who show up in the background to lend life to Treehollow! This
            page lists all of the patreon cameos we've had thus far, speaking and non-speaking.</p>
        <p>Want to move to Treehollow yourself? Become a patron and you can show up to all the town meetings!</p>
        <div class="patreon-button" id="patreon-button"><a href="http://www.patreon.com/tamberlane">Become a Patron</a></div>
    </div>
</div>
<div class="break"></div>
<div class="content">
    <div id="rogues-gallery">

        {% for character, full_name, patron in cast %}
            <div id="patron-{{character}}" class="patron-profile">
                <div id="{{character}}-photo" class="patron-photo" style="background-image: url('your_content/images/cast/{{character}}.png');">
                     </div>
                <div id="{{character}}-info" class="patron-info">
                    <h2>{{full_name}}</h2>
                    <p class="patron-donated-text"><em>donated by</em></p>
                    <h3 class="patron-donated">{{patron}}</h3>
                    <p><a href="tagged.html?tag={{character}}">Appearances</a></p>
                </div>
            </div>
        {% endfor %}

    </div>
</div>
{% endblock %}