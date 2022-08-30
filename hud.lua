sHud, nbPlayerTotal, showui = {}, 0, true

RegisterNetEvent("sHud:NUI")
AddEventHandler("sHud:NUI", function(type, data)
    for k, v in pairs(data) do
        if type == 'info' then
            SendNUIMessage({ action = 'setInfos', infos = {
                {
                    name = 'onebar',
                    value = v.onebar
                },
                {
                    name = 'twobar',
                    value = v.twobar
                },
                {
                    name = 'threebar',
                    value = v.threebar
                },
                {
                    name = 'fourbar',
                    value = v.fourbar
                },
            } })
        end

        if type == 'status' then
            SendNUIMessage({
                action = 'update',
                hunger = v.hunger,
                thirst = v.thirst
            })
        end
    end
end)

CreateThread(function()
    while true do
        Wait(2000)
    end
end)

function sHud.Register(Controls, ControlName, Description, Action)
    local _Control = {
        CONTROLS = Controls
    }
    RegisterKeyMapping(string.format('menu-%s', ControlName), Description, "keyboard", Controls)
    RegisterCommand(string.format('menu-%s', ControlName), function(source, args)
        if (Action ~= nil) then
            Action();
        end
    end, false)
    return setmetatable(_Control, Control)
end

sHud.Register('H', 'H', 'Enable / Disable Hud', function()
    if showui then
        TriggerEvent('sHud:showoption', true)
        showui = false
    elseif not showui then
        TriggerEvent('sHud:showoption', false)
        showui = true
    end
end)

RegisterNetEvent('sHud:showoption')
AddEventHandler('sHud:showoption', function(value)
    SendNUIMessage({ action = 'hideUi', value = value })
end)


















