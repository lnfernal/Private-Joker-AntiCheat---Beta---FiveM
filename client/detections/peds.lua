Citizen.CreateThread(
        function()
            local ped = GetPlayerPed(-1)
            while true do
                Citizen.Wait(2000)
            for i, black in pairs(Joker.BlacklistedPed) do -- **/configs/config.lua --
                if IsPedModel(ped, black) then
                    TriggerServerEvent("101511518:71520381", "Blacklisted Ped found.")
            end
        end
    end
end)