import { find_get_parameter } from "./utils.js";

export async function load_page() {
    await fetch_all_json_data();
}

async function fetch_all_json_data() {
    let response = await fetch("./comic/page_info_list.json");
    console.log("Fetched page info list");
    let json = await response.json();
    let tag = find_get_parameter("tag");
    console.log(json);
    build_tagged_list(json["page_info_list"], tag);
    document.getElementById("page-title").innerText = 'Posts tagged with "' + tag + '"';
}

function build_tagged_list(json_list, tag) {
    console.log(json_list);
    let html = "";
    json_list.forEach(comic_json => {
        if (comic_json["Characters"].includes(tag) || comic_json["Tags"].includes(tag)) {
            html += build_page_link(comic_json);
        }
    });
    if (html === "") {
        html = "No posts found.";
    } else {
        html = `    <div class="archive-grid">${html}</div>`;
    }
    document.getElementById("tagged").innerHTML = html;
}

function build_page_link(comic_json) {
    console.log(comic_json);
    return `
    <a href="comic/${comic_json["page_name"]}.html">
    <div class="archive-thumbnail">
        <div class="archive-thumbnail-page"><img src="${comic_json["thumbnail_path"]}" alt="${comic_json["Alt text"]}"></div>
        <div class="archive-thumbnail-title">${comic_json["Title"]}</div>
        <div class="archive-thumbnail-post-date">${comic_json["Post date"]}</div>
    </div>
    </a>
    `;
}