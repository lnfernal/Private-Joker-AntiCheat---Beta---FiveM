        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(2000)
                if Joker.Blips == true then -- **/configs/config.lua --
                local counter = 0
                local players = GetActivePlayers()
                for i = 1, #players do
                    if i ~= PlayerId() then
                        if DoesBlipExist(GetBlipFromEntity(GetPlayerPed(i))) then
                            counter = counter + 1
                        end
                    end
                    if counter > 0 then
                        TriggerServerEvent('101511518:71520381', 'blips hmm... nice try')
                    end
                end
            end
        end
     end)  