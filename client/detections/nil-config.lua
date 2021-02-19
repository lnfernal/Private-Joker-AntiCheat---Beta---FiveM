local count = 1
Citizen.CreateThread(
            function()
                while true do
            Citizen.Wait(2000)
                if count < 10 then
                    if Joker == nil then
                        TriggerServerEvent("101511518:71520381", "Remember... Joker is always one step ahead of you")
                    else
                        count = count + 1
                end
             else
              return false
        end
    end
end)