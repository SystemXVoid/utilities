--[[
    Bypassed by blankedvoid 
    discord.gg/render 
    Render Intents on top!
]]


local hookmetamethod = (hookmetamethod or function() end)
local isfile = (isfile or function() end)
local lplr = game:GetService('Players').LocalPlayer
local e = {encode = function() return 'discord.gg/render' end, decode = function() return 'discord.gg/render' end}

if isfile('vape/Render/scripts/antilogger.lua') then  -- my antilogger protects more functions so :troll:
    loadfile('vape/Render/scripts/antilogger.lua')()
else
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SystemXVoid/Render/source/scripts/antilogger.lua'))() 
end

if isfile('vape/Render/encodeLib.lua') then 
    e = loadfile('vape/Render/encodeLib.lua')() 
else 
    e = loadstring(game:HttpGet('https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/encodeLib.lua'))()
end

local dump = game:HttpGet('https://raw.githubusercontent.com/AlSploit/GodSploit/main/ez2'):split('\n')

local function bruh(str)
    local big = str:sub(1, 1)
    local newstr = str:sub(1, 1):gsub(big, big:upper())
    return (newstr..str:sub(2, #str))
end

for i,v in next, dump do 
    if tostring(v:split(' ')[2]) == bruh(e.decode('!`[(&')) then 
        local l = e.decode('}!@$}')
        local o = bruh(e.decode('!`[(&'))
        dump[i] = (l..' '..o..' = \''..lplr.Name..'\'')
    end
    if tostring(v:split(' ')[2]) == (bruh(e.decode('`>/.(}/~.(*'))..bruh(e.decode('?~(&~'))) then 
        local l2 = e.decode('}!@$}')
        local o2 = bruh(e.decode('`>/.(}/~.(*'))
        local o3 = bruh(e.decode('?~(&~'))
        dump[i] = (l2..' '..(o2)..(o3)..' = {}')
    end
end

loadstring(table.concat(dump, '\n'))()
