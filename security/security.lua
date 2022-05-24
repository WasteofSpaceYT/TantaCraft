local playerDetector = peripheral.wrap("right")
local chatBox = peripheral.wrap("left")
local players = {};

function checkPlayers() do
    for k,v in pairs(players) do
        if(playerDetector.isPlayerInRange(50, v) == nil) then
            table.remove(players, v)
        end
    end
end

while true do
    checkPlayers()
    if(playerDetector.isPlayersInRange(50)) then
        for k,v in pairs (playerDetector.getPlayersInRange(50)) do
            if(v == nil and players[v] ~= nil) then
                table.insert(players, v)
                chatBox.setText("Player " .. i .. " has entered the area.")
            end
        end
    end
end