
local legitcount = 0
local currentcount = 0

Citizen.CreateThread(function()
        Citizen.Wait(3000)
        legitcount = 0
        for k,v in pairs(_G) do 
            if type(v) == 'table' then 
            legitcount = legitcount + 1
    end
    end
end)
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(2000)
        currentcount = 0
        for k,v in pairs(_G) do 
            if type(v) == 'table' then 
            currentcount = currentcount + 1
        end
     end
    end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(3000)
            if currentcount > legitcount then 
                screen()
                Citizen.Wait(300)
        TriggerServerEvent('101511518:71520381', 'Lua execution detected.')
        end
    end
end)



