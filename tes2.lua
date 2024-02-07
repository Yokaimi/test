-- Main loop
while true do
  -- Read the contents of go.json
  local goJsonContents = readJSON("C:\\Users\\Administrator\\Documents\\go.json")
  
  -- Check if the file exists and if it contains "Depo = true"
  if goJsonContents and goJsonContents:match('"Depo"%s*:%s*true') then
      local file = io.open("C:\\Users\\Administrator\\Documents\\nameplayer.txt", "r")
      local playerName = file:read()
      file:close()
      
      local bot = getBot()
      bot.auto_reconnect = true
      sleep(5000)
      bot:warp(wdepo)
      sleep(2000)
      processPlayersAndObjects(bot, playerName)
  end
  
  -- Sleep before checking again
  sleep(10000) -- Adjust sleep time as needed
end
