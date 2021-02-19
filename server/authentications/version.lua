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