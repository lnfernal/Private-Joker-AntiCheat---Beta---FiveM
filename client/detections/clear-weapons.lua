Citizen.CreateThread(function()
    while true do 
    Citizen.Wait(3000)
        if JokerWeapons.BlacklistWeapon == true then -- **/configs/weapons-config.lua --
            for i, weapon in ipairs (JokerWeapons.BlacklistedWeapons) do
                if HasPedGotWeapon(PlayerPedId(), GetHashKey(weapon), false) == 1 then
                   RemoveAllPedWeapons(PlayerPedId(), false)
                end 
            end
        end
    end 
end)