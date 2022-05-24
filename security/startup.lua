function checkForUpdates()
    print("checking for updates")
    shell.run("wget https://raw.githubusercontent.com/WasteofSpaceYT/TantaCraft/main/version/security.txt")
    local file = fs.open("security.txt", "r")
    local version = file.readLines()
    for(i in version) do
        if(version[i] ~= "") then
            shell.run("wget " + version[i])
        end
    end
    file.close()
end

os.pullEvent = os.pullEventRaw

shell.run("bg security.lua")