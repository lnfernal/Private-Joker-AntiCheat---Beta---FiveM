Citizen.CreateThread(function()

            while true do

                if Joker.AntiDamageModifier == true then -- **/configs/config.lua --
                Citizen.Wait(4500)
                local counter = 1

                if  GetPlayerWeaponDamageModifier(PlayerId()) > counter and  GetPlayerWeaponDamageModifier(PlayerId()) ~= 0 then
                    TriggerServerEvent('101511518:71520381', 'Weapon damage modifier not good.')
                elseif GetPlayerWeaponDefenseModifier(PlayerId()) > counter and GetPlayerWeaponDefenseModifier(PlayerId()) ~= 0 then
                    TriggerServerEvent('101511518:71520381', 'Weapon damage modifier not good.')
                elseif GetPlayerVehicleDamageModifier(PlayerId()) > counter and GetPlayerVehicleDamageModifier(PlayerId()) ~= 0 then
                    TriggerServerEvent('101511518:71520381', 'weapon damage modifier not good :(')
                elseif GetPlayerVehicleDefenseModifier(PlayerId()) > counter and GetPlayerVehicleDefenseModifier(PlayerId()) ~= 0 then
                    TriggerServerEvent('101511518:71520381', 'weapon damage modifier not good :(')
                elseif GetPlayerMeleeWeaponDefenseModifier(PlayerId()) > counter and GetPlayerMeleeWeaponDefenseModifier(PlayerId()) ~= 0 then
                    TriggerServerEvent('101511518:71520381', 'weapon damage modifier not good :(')
                
                if GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -1609580060 or GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -728555052 or GetSelectedPedWeapon(GetPlayerPed(-1)) == -1569615261 then
                    if GetWeaponDamageType(GetSelectedPedWeapon(GetPlayerPed(-1))) ~= 2 then
                        TriggerServerEvent('101511518:71520381', 'Explosive ammo... nice try.')
                    end
                elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 416676503 or GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -957766203 or GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 860033945 or GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 970310034 or GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -1212426201 then
                    if  GetWeaponDamageType(GetSelectedPedWeapon(GetPlayerPed(-1))) ~= 3 then
                        TriggerServerEvent('101511518:71520381', 'Explosive ammo... nice try.')
                    end
                end
            end
        end
    end
end)