    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(200)
            if Joker.RegularShit == true then -- **/configs/config.lua --
                SetPedInfiniteAmmoClip(PlayerPedId(), false)
                SetPedInfiniteAmmo(PlayerPedId(), false)
                SetEntityCanBeDamaged(PlayerPedId(), true)

            if GetUsingnightvision(true) and not IsPedInAnyHeli(ped) then 
                  TriggerServerEvent('101511518:71520381', 'Nightvision detected.')
            end
    
           if GetUsingseethrough(true) and not IsPedInAnyHeli(ped) then 
                   TriggerServerEvent('101511518:71520381', 'Thermalvision detected.')
            end
                local speed = GetEntitySpeed(PlayerPedId())
                    if not IsPedInAnyVehicle(GetPlayerPed(-1), false) and not IsPedFalling(GetPlayerPed(-1)) then
                    if speed >= 8.0 then 
                       SetEntityMaxSpeed(PlayerPedId(), 7.0)
                end
            end
        end
    end
end)   