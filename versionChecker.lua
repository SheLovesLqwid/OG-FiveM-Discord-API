Citizen.CreateThread(function()
    updatePath = "SheLovesLqwid/OG-FiveM-Discord-API"
    resourceName = "OG_Discord_API ("..GetCurrentResourceName()..")"
    
    function checkVersion(err,responseText, headers)
        curVersion = LoadResourceFile(GetCurrentResourceName(), "version.txt")
    
        if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
            print("\n###############################")
            print("\n"..resourceName.." is outdated, should be: "..responseText.."\nis: "..curVersion.."\nplease update it from https://github.com"..updatePath.."")
            print("\n###############################")
        elseif tonumber(curVersion) > tonumber(responseText) then
            print("You somehow skipped a few versions of "..resourceName.." or the git went offline, if it's still online I advise you to update...")
        else
            print("\n"..resourceName.." is up to date!")
        end
    end
    
    PerformHttpRequest("https://raw.githubusercontent.com/SheLovesLqwid/OG-FiveM-Discord-API/main/version.txt", checkVersion, "GET")
end)
