


------------------------------------
--  W A R M E N U // W E A T H E R
------------------------------------


RegisterCommand("weatherMenu", function()
    OpenWeatherMenu()
end)

function OpenWeatherMenu()
    if WarMenu.IsMenuOpened("WeatherMenu") then
        WarMenu.CloseMenu("WeatherMenu")
    else
        WarMenu.OpenMenu("WeatherMenu")
    end
end



local WeatherMenusleep = 1500
Citizen.CreateThread(function()

    local function Init()
        WarMenu.CreateMenu("WeatherMenu", "Weather Options")
        WarMenu.SetSubTitle("WeatherMenu", "~y~Weather ~w~Options.")
        WarMenu.SetMenuMaxOptionCountOnScreen("WeatherMenu", 6)
        WarMenu.SetTitleColor("WeatherMenu", 255, 255, 255, 255)
        WarMenu.SetTitleBackgroundColor("WeatherMenu", 16, 205, 254, 150)
        WarMenu.SetMenuBackgroundColor("WeatherMenu", 0, 0, 0, 100)
        WarMenu.SetMenuSubTextColor("WeatherMenu", 255, 255, 255, 255)
        WarMenu.SetMenuWidth("WeatherMenu",0.23)
    end
    
    local function Exit()
        if WarMenu.Button("Exit", "") then
            WarMenu.CloseMenu("WeatherMenu")
        end
    end
    
    Init()
    while true do
        if WarMenu.IsMenuOpened("WeatherMenu") then
            WeatherMenusleep = 0

            if WarMenu.Button('--------------------- ~y~Weather~w~ --------------------', '→') then
            end
                if WarMenu.Button('Clear', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("CLEAR")
                    SetWeatherTypeNow("CLEAR")
                    SetWeatherTypeNowPersist("CLEAR")
                end
                if WarMenu.Button('Overcast', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("OVERCAST")
                    SetWeatherTypeNow("OVERCAST")
                    SetWeatherTypeNowPersist("OVERCAST")
                end
                if WarMenu.Button('Cloudy', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("CLOUDY")
                    SetWeatherTypeNow("CLOUDY")
                    SetWeatherTypeNowPersist("CLOUDY")
                end
                if WarMenu.Button('Extrasunny', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("EXTRASUNNY")
                    SetWeatherTypeNow("EXTRASUNNY")
                    SetWeatherTypeNowPersist("EXTRASUNNY")
                end
                if WarMenu.Button('Smog', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("SMOG")
                    SetWeatherTypeNow("SMOG")
                    SetWeatherTypeNowPersist("SMOG")
                end
                if WarMenu.Button('Clearing', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("CLEARING")
                    SetWeatherTypeNow("CLEARING")
                    SetWeatherTypeNowPersist("CLEARING")
                end
                if WarMenu.Button('Rain', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("RAIN")
                    SetWeatherTypeNow("RAIN")
                    SetWeatherTypeNowPersist("RAIN")
                end
                if WarMenu.Button('Thunder', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("THUNDER")
                    SetWeatherTypeNow("THUNDER")
                    SetWeatherTypeNowPersist("THUNDER")
                end
                if WarMenu.Button('Snow', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("SNOW")
                    SetWeatherTypeNow("SNOW")
                    SetWeatherTypeNowPersist("SNOW")
                end
                if WarMenu.Button('Blizzard', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("BLIZZARD")
                    SetWeatherTypeNow("BLIZZARD")
                    SetWeatherTypeNowPersist("BLIZZARD")
                end
                if WarMenu.Button('Xmas', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("XMAS")
                    SetWeatherTypeNow("XMAS")
                    SetWeatherTypeNowPersist("XMAS")
                end
                if WarMenu.Button('Halloween', '→') then
                    ClearWeatherTypePersist()
                    SetWeatherTypePersist("HALLOWEEN")
                    SetWeatherTypeNow("HALLOWEEN")
                    SetWeatherTypeNowPersist("HALLOWEEN")
                end

            if WarMenu.Button('---------------------- ~y~Time~w~ -----------------------', '→') then
            end

                if WarMenu.Button('Morning', '→') then
                    NetworkOverrideClockTime(9, 9, 9)
                end
                if WarMenu.Button('Noon', '→') then
                    NetworkOverrideClockTime(12, 12, 12)
                end
                if WarMenu.Button('Evening', '→') then
                    NetworkOverrideClockTime(18, 18, 18)
                end
                if WarMenu.Button('Night', '→') then
                    NetworkOverrideClockTime(23, 23, 23)
                end

            Exit()
            WarMenu.Display()
        end
        Citizen.Wait(WeatherMenusleep)
    end
end)
