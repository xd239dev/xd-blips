Citizen.CreateThread(function()
    AddBlips()
end)

function AddBlips()
    for k, v in pairs(Config.Blips) do
        blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
        SetBlipSprite(blip, v.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, v.scale)
        SetBlipColour(blip, v.colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.name)
        EndTextCommandSetBlipName(blip)
    end
end