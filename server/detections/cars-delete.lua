function cardelete(entity)
  local model = GetEntityModel(entity)
  if (model ~= nil) then
      if (GetEntityType(entity) == 1 and GetEntityPopulationType(entity) == 7) then
          return true
      end
      for i=1, #JokerCars.blackcars do -- **/configs/vehicles-config.lua --
          local hashkey = tonumber(JokerCars.blackcars[i]) ~= nil and tonumber(JokerCars.blackcars[i]) or GetHashKey(JokerCars.blackcars[i])
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
  if (cardelete(entity)) then
    CancelEvent()
end

if GetEntityType(entity) ~= 0 then
  _source  = source
 player = _source
 local model = GetEntityModel(entity)
 local name = GetPlayerName(player)
     for i, objName in ipairs(JokerCars.blackcars) do
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
