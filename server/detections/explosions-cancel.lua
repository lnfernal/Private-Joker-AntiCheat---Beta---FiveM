AddEventHandler("explosionEvent", function(sender, ev)
      for _, v in ipairs(JokerExplosion.ExplosionsList) do -- **/configs/explosion-config.lua --
        if ev.explosionType == v then
          _source = source
          local ped = GetPlayerPed(source)
        
            CancelEvent()
           -- TriggerEvent('101511518:71520381', "Explosive detected type: "..v.." ",sender)
        return
     end
  end
end)