Config = {}

Config.Days = 45 -- how many days since last login to delete the data

Config.DatabaseTables = {

    {
        table = 'players', --The Database table name you want to delete from
        coulmn = 'citizenid', -- The column name in that table that matches CitizenID
    },

    {
        table = 'player_contacts',
        coulmn = 'citizenid',
    },

    {
        table = 'bank_statements',
        coulmn = 'citizenid',
    },

    {
        table = 'bank_accounts',
        coulmn = 'citizenid',
    },

    {
        table = 'player_contacts',
        coulmn = 'citizenid',
    },

    {
        table = 'player_mails',
        coulmn = 'citizenid',
    },
    {
        table = 'player_vehicles',
        coulmn = 'citizenid',
    },


}