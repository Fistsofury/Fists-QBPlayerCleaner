function cleanUpDatabase()
    local days = Config.Days
    exports.oxmysql:fetch('SELECT citizenid FROM players WHERE last_updated < DATE_SUB(NOW(), INTERVAL ? DAY)', {days}, function(players)
        if players then
            for _, player in ipairs(players) do
                local citizenid = player.citizenid

                for _, tableConfig in ipairs(Config.DatabaseTables) do
                    local deleteSQL = string.format('DELETE FROM `%s` WHERE `%s` = ?', tableConfig.table, tableConfig.column)
                    exports.oxmysql:execute(deleteSQL, {citizenid}, function(affectedRows)
                        print(string.format('Deleted %s rows from %s for citizenid: %s', tostring(affectedRows), tableConfig.table, citizenid))
                    end)
                end
            end
        else
            print('No players found or error fetching players.')
        end
    end)
end

cleanUpDatabase()