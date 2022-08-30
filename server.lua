Citizen.CreateThread(function()
    while true do
        TriggerClientEvent('sHud:update', -1, GetNumPlayerIndices())
        Citizen.Wait(5000)
    end
end)