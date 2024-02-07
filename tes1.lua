function processPlayersAndObjects(bot, playerName)
    local world = bot:getWorld()
    local players = world:getPlayers()
    local objects = world:getObjects()

    -- Lowercase the player and bot names for case-insensitive comparison
    local playerNameLower = string.lower(playerName)
    local botNameLower = string.lower(botName)

    -- Loop through the players
    for i, player in ipairs(players) do
        -- Get the original case of the player's name
        local originalPlayerName = player.name

        -- Lowercase the player's name for case-insensitive comparison
        local playerLower = string.lower(originalPlayerName)

        -- Check if the player's name matches the specified player name (case-insensitive)
        if playerLower == playerNameLower then
            print("Player found: " .. originalPlayerName)

            -- Loop through the objects
            for j, obj in ipairs(objects) do
                -- Check if the object's id is in the list of ids
                if obj.id == Objectid or obj.id == dlsid or obj.id == bglid then
                    sleep(3000)
                    print("Collecting object with id: " .. obj.id)
                    bot:collectObject(obj.oid, 4)
                    sleep(1000)
                    bot:warp(save, idsave)
                    sleep(3000)

                    -- Get the count of the collected object
                    local count
                    if obj.id == Objectid then
                        count = bot:getInventory():getItemCount(Objectid)
                    elseif obj.id == dlsid then
                        count = bot:getInventory():getItemCount(dlsid)
                    elseif obj.id == bglid then
                        count = bot:getInventory():getItemCount(bglid)
                    end

                    -- Send the webhook with the original case of the player's name
                    local donationWebhook = Webhook.new(WebhookURL)
                    donationWebhook.embed1.use = true
                    donationWebhook.embed1.color = 0xFF0000
                    donationWebhook.embed1.title = "<a:crownw:1136931301233000479> Donation Logs <a:crownw:1136931301233000479>"
                    donationWebhook.embed1.description = ("<a:arrowcxy:1085827203956215818> GrowID: " .. originalPlayerName .. "\n<a:arrowcxy:1085827203956215818> Deposit: ".. count .. " " .. (obj.id == Objectid and "World Lock" or (obj.id == dlsid and "Diamond Lock" or "Blue Gem Lock")))
                    donationWebhook:send()

                    -- Drop the collected object
                    bot:drop(obj.id, count)
                    sleep(5000)
                    bot:warp(wdepo)
                    sleep(2000)
                end
            end
        else
            -- Check if the player's name is not the bot name or the player who is controlling the bot
            if playerLower ~= botNameLower and playerLower ~= bot.name then
                print("Player name is not equal: " .. botName)
                bot:say("/ban " .. player.name)
                sleep(2000)
            end
        end
    end
end
