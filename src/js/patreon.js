import {ajax_call} from "./utils";
// https://www.patreon.com/api/oauth2/api/current_user/campaigns?fields%5Bcampaign%5D=pledge_sum,patron_count

function callback(xhttp){
    console.log(xhttp);
}

ajax_call("http://www.google.com/robots.txt", callback);
