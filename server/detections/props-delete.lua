function remove(entity)
  Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity))
end

function propdelete(entity)
  local model = GetEntityModel(entity)
  if (model ~= nil) then
      if (GetEntityType(entity) == 1 and GetEntityPopulationType(entity) == 7) then
          return true
      end
      for i=1, #JokerModels.BlacklistedModel do -- **/configs/models-config.lua --
          local hashkey = tonumber(JokerModels.BlacklistedModel[i]) ~= nil and tonumber(JokerModels.BlacklistedModel[i]) or GetHashKey(JokerModels.BlacklistedModel[i])
          if (hashkey == model) then
              return true
          end
      end
  end
  return false
end


AddEventHandler("entityCreating",  function(entity,player)
  local entity = entity
    if not DoesEntityExist(entity) then
     return
    end
    local source = NetworkGetEntityOwner(entity)
    local entID = NetworkGetNetworkIdFromEntity(entity)
     if (propdelete(entity)) then
        CancelEvent()
end

if GetEntityType(entity) ~= 0 then
    _source  = source
    player = _source
    local model = GetEntityModel(entity)
    local name = GetPlayerName(player)
     for i, objName in ipairs(JokerModels.BlacklistedModel) do -- **/configs/models-config.lua --
         if model == GetHashKey(objName) then
         if source == nil then
            elseif name == nil then
          else        
         end         
          Citizen.Wait(2000)
      end
    end
  end
end) 