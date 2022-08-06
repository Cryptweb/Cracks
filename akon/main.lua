-- // Defining our variables/request function
local http_request = http_request or request
if (syn) then
    http_request = syn.request    
end

-- // Defining the key
getgenv().key = "83Ptx4SxQnEdDLXnKUJV8BzDJBjBT5QEptA"

-- // Hooking the request function
local old; old = hookfunc(http_request, function(self)
    -- // If we find an url that is 'http://akon.tk/lmfaooo/server.php?key=**KEYHERE**' then
    if (self.Url == 'http://akon.tk/lmfaooo/server.php?key=' .. getgenv().key) then
        -- // Make the url return a valid body so that it tricks the whitelist
        return {
            StatusCode = 200,
            Body = '35d41d78cc1dbd5a4cb64927b8acf4c232612eba5d4a9e5d86c78a8e56c93ccc'
        }
    end

    return old(self)
end)

-- // Main script (DO NOT REMOVE)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cryptweb/Cracks/main/akon/script.lua'))() -- // This was not raw
