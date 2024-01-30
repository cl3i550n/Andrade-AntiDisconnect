Internet = true

function Block()
    Citizen.CreateThread(function()
        while not Internet do
            DisableControlAction(0, 0x07CE1E61, true) -- LookLeftRight
            DisableControlAction(0, 0xF84FA74F, true) -- LookUpDown
            DisableControlAction(0, 0xCEE12B50, true) -- VehicleMouseControlOverride
            DisableControlAction(0, 0x3076E97C, true) -- MeleeAttackAlternate
            DisableControlAction(0, 0xB4E465B4, true) -- MoveLeftRight
            DisableControlAction(0, 0xD27782E3, true) -- MoveUpDown
            DisableControlAction(0, 0xD9D0E1C0, true) -- disable sprint
            DisableControlAction(0, 0xDE794E3E, true) -- disable melee
            DisableControlAction(0, 0xB2F377E8, true) -- disable exit vehicle
            DisableControlAction(0, 0xC1989F95, true) -- disable I
            DisableControlAction(0, 0xF84FA74F, true) -- disable RBM LEFT
            DisablePlayerFiring(PlayerPedId(), true)  -- Desativa o tiro
            Citizen.Wait(0)
        end
    end)
end

RegisterNUICallback("lock", function(data, cb)
    if not Internet then return end
    Internet = false
    TriggerEvent("vorp_inventory:CloseInv")
    Citizen.InvokeNative(0x7D9EFB7AD6B19754, PlayerPedId(), true)
    Block()
    cb('ok')
end)

RegisterNUICallback("unlock", function(data, cb)
    if Internet then return end
    Internet = true
    Citizen.InvokeNative(0x7D9EFB7AD6B19754, PlayerPedId(), false)
    cb('ok')
end)

AddEventHandler('onClientResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
end)
