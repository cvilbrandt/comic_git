import os
import re
from datetime import datetime
from json import load
from pprint import pprint

import requests
from googleapiclient.discovery import build

SHEET_ID = os.environ["PATRON_ALIASES_GOOGLE_SHEET_ID"]
GOOGLE_SHEETS_DEVELOPER_KEY = os.environ["GOOGLE_SHEETS_DEVELOPER_KEY"]
PATREON_AUTH_TOKEN = os.environ["PATREON_AUTH_TOKEN"]


def load_nicknames_sheet():
    print("Loading Google Sheet of patron info...")
    RANGE = 'Current!B2:L'
    service = build('sheets', 'v4', developerKey=GOOGLE_SHEETS_DEVELOPER_KEY)
    # Call the Sheets API
    sheet = service.spreadsheets()
    result = sheet.values().get(spreadsheetId=SHEET_ID, range=RANGE).execute()

    nicknames = {}
    for row in result["values"]:
        if row[2] != "Active patron":
            continue
        alias, email = row[1].strip(), row[10].strip()
        if alias and email:
            nicknames[email] = alias.strip()

    return nicknames


def call_patreon():
    print("Retrieving data from Patreon...")
    url = "https://www.patreon.com/api/oauth2/v2/campaigns/82133/members?include=currently_entitled_tiers&fields%5Bmember%5D=full_name,email,lifetime_support_cents,patron_status,pledge_relationship_start"
    headers = {"Authorization": PATREON_AUTH_TOKEN}
    patrons = []

    while True:
        response = requests.request("GET", url, headers=headers)
        json_response = response.json()
        patrons += json_response["data"]
        print(len(patrons))
        if not "links" in json_response:
            break
        url = json_response["links"]["next"]

    return patrons


def build_patreon_data():
    nicknames = load_nicknames_sheet()
    patrons = call_patreon()
    # with open("src/scripts/patrons.json", "w") as f:
    #     dump(patrons, f)
    # with open("src/scripts/patrons.json") as f:
    #     patrons = load(f)

    years_dict = {6: [], 5: [], 4: [], 3: [], 2: [], 1: []}
    tier_list = {6000: "👑", 5000: "🌟", 4000: "♠", 3000: "♥", 2000: "♣", 1000: "♦"}

    print(f"Current datetime: {datetime.now()}")

    for p in patrons:
        attr = p["attributes"]
        if attr["patron_status"] != "active_patron":
            continue
        email = attr["email"]
        full_name = attr["full_name"]
        cents = attr["lifetime_support_cents"]
        start = attr["pledge_relationship_start"]
        print("{:<25} | {:<6} | {}".format(full_name, cents, start))

        name = nicknames[email] if email in nicknames else full_name.strip()

        # Append tier icon
        for tier_cents in sorted(tier_list.keys(), reverse=True):
            if cents / 100 > tier_cents:
                name = f'<span class="tier-{tier_cents}">{tier_list[tier_cents]} {name}</span>'
                break

        # Add to year list
        dt = datetime.fromisoformat(start)
        now_dt = datetime.now(dt.tzinfo)
        current_year, current_month, current_day = now_dt.year, now_dt.month, now_dt.day
        for years in (6, 5, 4, 3, 2, 1):
            past_dt = datetime(year=current_year - years, month=current_month, day=current_day, tzinfo=dt.tzinfo)
            if dt < past_dt:
                print(f"Has pledged for {years} years")
                years_dict[years].append(name)
                break

    def sort_key(name):
        m = re.search(r'<span class=".*?">. (.*?)</span>', name)
        if m:
            return m.group(1).lower()
        return name.lower()

    for sublist in years_dict.values():
        sublist.sort(key=sort_key)

    return years_dict


if __name__ == "__main__":
    data = build_patreon_data()
    pprint(data)
