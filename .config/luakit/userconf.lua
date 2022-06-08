local settings = require "settings"
settings.window.home_page = "68k.news"
settings.window.search_engines = {
	whoogle = "https://whoogle.herokuapp.com/search?q=%s";
	ddg = "https://html.duckduckgo.com/html/?q=%s";
	searx = "https://swag.pw/search?q=%s"
}
settings.window.default_search_engine = "whoogle"
