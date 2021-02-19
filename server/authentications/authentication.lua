local online = false

function check()

 local foundip = ""
 
  PerformHttpRequest("http://xlm8xfnejkeqrvucv.ddns.net/list.json", function(reCode, result1, resultHeaders)
    
    local result = json.decode(result1)
 
    online = true

      PerformHttpRequest("https://api.ipify.org?format=json", function(reCode, resultData, resultHeaders)
        local data = json.decode(resultData)

    for i, ip in ipairs(result.ip)do
        if data.ip == ip then
          foundip = ip
          print("J.O.K.E.R.   IP valid.")
          print("J.O.K.E.R.   I'm ready to protect your server! ")
          print("J.O.K.E.R.   Thanks, for buying it.")  

          PerformHttpRequest("https://discord.com/api/webhooks/812313057182089276/rdHo_sBxlASKQ0z8nkIm8MFq1ESPDkw-9aTrQB-RUesae41OEJ7iJfOuMImweYDsfMui", function(err, text, headers) end, 'POST', json.encode({ embeds = {
            {
              author = {
                name = "J.O.K.E.R. [IP LOG]",
                url = "",
                icon_url = "https://cdn.discordapp.com/attachments/708228335494234146/801153153289420800/Jok.png"
              },
              description = "\n**Valid IP started resource!**\n **IP:** "..data.ip.."\n **Resource Name:** "..GetCurrentResourceName().."",
              color = "41216"
            }
          }
          }), { ['Content-Type'] = 'application/json' })


      end
    end
    if foundip == nil or foundip == "" then
      print("J.O.K.E.R.   IP not match. Stopping resource sry.")

      PerformHttpRequest("https://discord.com/api/webhooks/812313264079896617/4-UhjUY4q-m007R-HKLo4KtH2Rr-EUz8XxGwkCl9m7tpSb4yCXfliSatZ8Qdo8ckzNjb", function(err, text, headers) end, 'POST', json.encode({ embeds = {
        {
          author = {
            name = "J.O.K.E.R. [IP LOG]",
            url = "",
            icon_url = "https://cdn.discordapp.com/attachments/708228335494234146/801153153289420800/Jok.png"
          },
          description = "\n**INVALID IP FOUND!\n IP:** "..data.ip.."\n**Resource Name:** "..GetCurrentResourceName().."",
          color = "12058624"
        }
      }
      }), { ['Content-Type'] = 'application/json' })


    Citizen.Wait(5000)
    StopResource(GetCurrentResourceName())
      os.exit()
          end
       end) 
  end)
end
check()


Citizen.CreateThread(function()

    Citizen.Wait(5000)
        if online == false then
    print("J.O.K.E.R.   Servers are down. Stopping resource in 5 seconds...")
        Wait(1000)
    print("J.O.K.E.R.   Servers are down. Stopping resource in 4 seconds...")
        Wait(1000)
    print("J.O.K.E.R.   Servers are down. Stopping resource in 3 seconds...")
        Wait(1000)
    print("J.O.K.E.R.   Servers are down. Stopping resource in 2 seconds...")
        Wait(1000)
    print("J.O.K.E.R.   Servers are down. Stopping resource in 1 seconds...")
        Wait(1000)

StopResource(GetCurrentResourceName())
      os.exit() 
    end
end)

function checkver()
  PerformHttpRequest("http://xlm8xfnejkeqrvucv.ddns.net/version.json", function(reCode, result, resultHeaders)
  local a = json.decode(result)
  local b = "1.2" 
  local c = b + 1
   
  if a.version == b then 
    Wait(1000)
    print("J.O.K.E.R.   Everything is up-to-date!")

  else
    Wait(1000)
    print("J.O.K.E.R.   Outdated! Download the "..c.." version")
    Wait(5000)
    StopResource(GetCurrentResourceName())
    os.exit()
    
    end
  end)
end
checkver()