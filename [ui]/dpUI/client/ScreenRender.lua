ScreenRender = {}
local SCREENS_PATH = "html/screens/"
local SCREENS_URL = "http://mta/local/" .. SCREENS_PATH

setDevelopmentMode(true, true)

local function readFile(path)
	local file = File(path)
	if not file then
		return false
	end
	local str = file:read(file.size)
	file:close()
	return str
end

function ScreenRender.start()
	ScreenManager.browser:loadURL("http://mta/local/html/index.html")
end

function ScreenRender.renderScreen(name)
	if type(name) ~= "string" then
		return false
	end
	local data = {
		message = "Wherry" .. math.random(1000, 9999),
		users = {
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},	
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},	
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},	
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},		
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},	
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},	
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},	
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 1, name = "User1", score = 123},
			{id = 2, name = "User2", score = 124},
			{id = 3, name = "User3", score = 23},
			{id = 4, name = "User4", score = 121233},
			{id = 5, name = "User5", score = 125123},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},
			{id = 6, name = "User6", score = 121323},																				
		}
	}
	ScreenManager.browser:executeJavascript("Screens.load(\"" .. name .. "\", '" .. toJSON(data) .."');")
end