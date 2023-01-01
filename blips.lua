local blips = {
  {title="Change me", colour=0, id=0, location = vector3(0.0, 0.0, 0.0)}, -- Add more below me (https://docs.fivem.net/docs/game-references/blips/)
}

-- ONLY EDIT THE ABOVE, DO NOT TOUCH THE BELOW!
CreateThread(function()
  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.location.x, info.location.y, info.location.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 0.8)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
  end
end)
