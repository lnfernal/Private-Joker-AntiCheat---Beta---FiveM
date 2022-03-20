AddEventHandler('onClientResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        CancelEvent()
        TriggerServerEvent('101511518:71520381', 'stopping me >:(')
    end
end)

AddEventHandler("onClientResourceStop", function(resourceName)
if Joker.AntiResourceStop == true then
    CancelEvent()
    TriggerServerEvent('101511518:71520381', 'Resource stop detected.')
    end
end)


function screen()
   
    local resp = json.decode(data)
    end)
end
