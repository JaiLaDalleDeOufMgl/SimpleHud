local data = {}
------------------------- Infos
CreateThread(function()
    while true do
        Wait(4000)
        data = {}
        table.insert(data, {
            onebar = sFw_Client.players.money .. '$ Liquide',
            twobar = sFw_Client.players.bank .. '$ Banque',
            threebar = sFw_Client.players.dirtycash .. '$ Argent semi sales',
            fourbar = GetPlayerServerId(PlayerId()) .. ' : ID',
            hunger = sFw_Client.players.hunger,
            thirst = sFw_Client.players.thirst,
        })
        TriggerEvent("sHud:NUI", 'info', data)
        TriggerEvent("sHud:NUI", 'status', data)
    end
end)

RegisterCommand('info', function()
    print(json.encode(sFw_Client.players))
end)