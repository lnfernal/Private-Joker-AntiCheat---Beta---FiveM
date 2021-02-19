Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(100)
            if _G == nil or _G == {} or _G == "" then
               TriggerEvent('101511518:71520381', "Anticheat bypass detected.")
                return
            else
                Wait(500)
            end
        end
    end)

AddEventHandler('chatMessage', function(source, n, message)
        local name = GetPlayerName(source)
        for k,n in pairs(Joker.Blwords) do
          if string.match(message:lower(),n:lower()) then
            TriggerEvent('101511518:71520381', "Blacklisted word!  Word: "..n.."", source)
                  ancelEvent()
          end
      end
end)

RegisterNetEvent('screen')
AddEventHandler('screen',function()
  exports['screenshot-basic']:requestClientScreenshot(GetPlayers()[1], {
    fileName = 'cache/screenshot.jpg'
})
end)
