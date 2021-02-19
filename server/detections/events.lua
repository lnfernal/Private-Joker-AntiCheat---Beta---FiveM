for i, event in ipairs(JokerEvents.eventek) do -- **/configs/events-config.lua --
  RegisterNetEvent(event)
    AddEventHandler(event, function()
      _source = source
      player = _source
      local name = GetPlayerName(player)
     CancelEvent()
   TriggerEvent('101511518:71520381', "Fake event triggered: "..event.." ",player)
  end)  
end