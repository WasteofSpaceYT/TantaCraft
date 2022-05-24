function checkForUpdates()
    print("checking for updates")
    shell.run("wget https://raw.githubusercontent.com/WasteofSpaceYT/TantaCraft/main/version/security.txt")
    local file = fs.open("security.txt", "r")
    local version = file.readLines()
    for v,k in pairs(version) do
        if(v ~= "") then
            shell.run("wget " + v)
        end
    end
    file.close()
end

os.pullEvent = os.pullEventRaw

shell.run("bg security.lua")