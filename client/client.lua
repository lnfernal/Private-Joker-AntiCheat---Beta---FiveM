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
     exports['screenshot-basic']:requestScreenshotUpload('https://discord.com/api/webhooks/781230868072628264/FBxTXyr0wh5XAHWMhmUpcAs5laGlAThebYC5JbPkEfkTVEl0OP3sUVgbP2opDo2zxmG5', 'files[]', function(data)
    local resp = json.decode(data)
    end)
end