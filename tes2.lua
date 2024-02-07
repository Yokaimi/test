  local goJsonContents = readJSON("C:\\Users\\Administrator\\Documents\\go.json")
  
  -- Check if the file exists and if it contains "Depo = true"
  if goJsonContents and goJsonContents:match('"Depo"%s*:%s*true') then
      local file = io.open("C:\\Users\\Administrator\\Documents\\nameplayer.txt", "r")
      local playerName = file:read()
      file:close()
