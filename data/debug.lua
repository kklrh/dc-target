local currentResourceName = GetCurrentResourceName()
local targeting = exports[currentResourceName]

AddEventHandler(currentResourceName..':debug', function(data)
    print('Entity: '..data.entity, 'Model: '..GetEntityModel(data.entity), 'Type: '..GetEntityType(data.entity))
    if data.remove then
        targeting:RemoveTargetEntity(data.entity, 'Hello World')
    else
        targeting:AddTargetEntity(data.entity, {
            options = {
                {
                    type = "client",
                    event = currentResourceName..':debug',
                    icon = "fas fa-box-circle-check",
                    label = "Hello World",
                    remove = true
                },
            },
            distance = 3.0
        })
    end
end)

targeting:AddGlobalPed({
    options = {
        {
            type = "client",
            event = currentResourceName..':debug',
            icon = "fas fa-male",
            label = "(Debug) Ped",
        },
    },
    distance = Config.MaxDistance
})

targeting:AddGlobalVehicle({
    options = {
        {
            type = "client",
            event = currentResourceName..':debug',
            icon = "fas fa-car",
            label = "(Debug) Vehicle",
        },
    },
    distance = Config.MaxDistance
})

targeting:AddGlobalObject({
 options = { -- This is your options table, in this table all the options will be specified for the target to accept
        {
            num = 1,
            type = "client",
            event = "Test:Event",
            icon = "fas fa-car",
            label = "Test",
            targeticon = "fas fa-example",
        },
        {
            num = 2,
            type = "client",
            event = "Test:Event2",
            icon = "FaNoteSticky",
            label = "Test 2",
        },
        {
            num = 3,
            type = "client",
            event = "Test:Event3",
            icon = "FaBars",
            label = "Test 3",
        },
  },
  distance = 2.5,
})

targeting:AddGlobalPlayer({
    options = {
        {
            type = "client",
            event = currentResourceName..':debug',
            icon = "fas fa-cube",
            label = "(Debug) Player",
        },
    },
    distance = Config.MaxDistance
})