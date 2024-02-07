Objectid = 242
dlsid = 1796
bglid = 7188


getBot():warp(wdepo)
sleep(1000)
getBot():say("Script by Arcexy#7413")

function readJSON(filePath)
  local file = io.open(filePath, "r")
  if file then
      local contents = file:read("*a")
      file:close()
      return contents
  end
  return nil
end
