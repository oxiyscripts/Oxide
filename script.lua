local url = "https://raw.githubusercontent.com/ccenta/Oxide/main/scripts/"

local games = {
  [537413528] = "Build a boat";
  [5602055394] = "Hood Modded";
  [192800] = "Pizza Place";
 
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
