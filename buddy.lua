
local main=menu.add_feature("Universe_SYS","parent",0)


local https = require("ssl.https")
local json = require("json")
local base64 = require("base64")
local repo = "shashimalrandika/Test"
local filepath = "buddy.lua"
local response = https.request("https://api.github.com/repos/".. repo .. "/contents/".. filepath)
local json_response = json.decode(response)
local file_content = base64.decode(json_response.content)
