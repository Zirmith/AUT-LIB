repeat task.wait() until game:isLoaded()

getgenv().version = "0.0.1"

local util = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zirmith/Util-Tools/main/xyz.lua"))()
local ItemSpawns = game.Workspace.ItemSpawns

local AstralChests = ItemSpawns.AstralChests
local Chests = ItemSpawns.Chests
local DeltaCults = ItemSpawns['DELTA Cults']
local EventItems = ItemSpawns.EventItems
local Him = ItemSpawns.Him
local Meteors = ItemSpawns.Meteors
local Poster = ItemSpawns.Poster
local SandDeb = ItemSpawns['Sand Debris']
local Shards = ItemSpawns.Shards
local StandardItems = ItemSpawns.StandardItems

Workspace = game.Workspace
local PlayerService = game:GetService'Players'
local Player = game.Players.LocalPlayer;
Hum = Player.Character.Humanoid
local HumanoidRootPart = Player.Character.HumanoidRootPart;
local teleport = game:GetService'TeleportService';
local Mouse = Player:GetMouse();
local GetName = util.getPlaceName();
local standardNcpFolder = Workspace:WaitForChild'NPCS'


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zirmith/Venyx-UI-Library/main/source.lua"))()

local auth = library.new("Auth-Ware | " ..GetName, 5013109572)

local themes = {
	Background = Color3.fromRGB(135,136,138),
	Glow = Color3.fromRGB(66, 233, 245),
	Accent = Color3.fromRGB(19,17,17),
	LightContrast = Color3.fromRGB(167,167,167),
	DarkContrast = Color3.fromRGB(25,25,25),  
	TextColor = Color3.fromRGB(116,116,116)
}

selectedmethod = "";
version = getgenv().version;
wantedversion = getgenv().version;

local utility = {}


local things = {
    "Astral Chests",
    "Chests",
    "SandDebris",
    "Meteors",
    "Itmes",
    "Shards"
}


utility.farm = function(thing)
    if thing == "Astral Chests" then

    else

        if thing == "Chests" then

        else
            if thing == "SandDebris" then
                
            else
                if thing == "Items" then

                else
                    if thing == "Shards" then

                    else
                        if thing == "Meteors" then

                        end
                    end
                end
            end
        end
    end
end


utility.reload = function()
    task.wait()
    game.CoreGui["Auth-Ware | " ..GetName]:Destroy()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AuthZero/Project-M/main/Auth/Scripting/Beta/Versions/"..wantedversion.."/Source/script.auth"))()
end

_G.playeresp = false
_G.farmtpmethod = "";
_G.farmdistance = 0;
_G.isfarming = false;
_G.tweenspeed = .5
_G.farmingFor = ""

spawn(function()
    while task.wait(.1) do
         if _G.isfarming then
            utility.farm(_G.farmingFor)
         end
    end
 end)


local page = auth:addPage("Home", 5012544693)
local credits = page:addSection('Credits')
local owner = credits:addButton('Made By : Not_Auth')
local uicreds = credits:addButton('Ui Design: Venyx')
local scripting = credits:addButton('Scripting By: Auth-Ware Team')
local versionsec = page:addSection('Version')
local vb = versionsec:addButton('Using Version: v'..version)

local versionpicker = versionsec:addDropdown('Versions', {"0.0.1"}, function(text)
wantedversion = text
end)

local reload = versionsec:addButton('Reload Ui', function()
task.wait()
    utility.reload()
end)

local rejoin = versionsec:addButton('Rejoin', function()
    util.rejoinGame()
end)

local serverhop = versionsec:addButton('ServerHop', function()
    util.serverHop()
end)


local quit = versionsec:addButton('Quit', function()
    game.CoreGui["Auth-Ware | " ..GetName]:Destroy()
end)

