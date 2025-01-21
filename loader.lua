local gameList = {
    {ID = 7336302630, LoadString = "https://raw.githubusercontent.com/TheCollecting/RatHack-pd/refs/heads/main/script.lua"},
    {ID = 286090429, LoadString = "https://raw.githubusercontent.com/TheCollecting/Rathack-Arsenal/refs/heads/main/ArsenalV2.lua"},
    {ID = 13253735473, LoadString = "https://raw.githubusercontent.com/TheCollecting/RatHackTrident/refs/heads/main/RatHack.lua"},
}

for i = 1, #gameList do
    if (gameList[i].ID == game.PlaceId) then
        loadstring(game:HttpGet(gameList[i].LoadString))()
        print(gameList[i].ID)
        print("Loaded RatHack")
    end
end
