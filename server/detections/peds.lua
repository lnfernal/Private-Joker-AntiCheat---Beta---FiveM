
function peddelete(entity)
  local model = GetEntityModel(entity)
  if (model ~= nil) then
      if (GetEntityType(entity) == 1 and GetEntityPopulationType(entity) == 7) then
          return true
      end
      for i=1, #Joker.BlacklistedPed do -- **/configs/config.lua --
          local hashkey = tonumber(Joker.BlacklistedPed[i]) ~= nil and tonumber(Joker.BlacklistedPed[i]) or GetHashKey(Joker.BlacklistedPed[i])
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
  if (peddelete(entity)) then
    CancelEvent()
end

if GetEntityType(entity) ~= 0 then
  _source  = source
 player = _source
 local model = GetEntityModel(entity)
 local name = GetPlayerName(player)
     for i, objName in ipairs(Joker.BlacklistedPed) do
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
