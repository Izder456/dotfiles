local settings = require "settings"
settings.window.home_page = "68k.news"
settings.window.search_engines = {
	searx = "https://search.disroot.org/search?q=%s";
	whoogle = "https://whoogle.herokuapp.com/search?q=%s";
	ddg = "https://html.duckduckgo.com/html/?q=%s";
	frog = "http://frogfind.com/?=%s";
	brave = "https://search.brave.com=/search?=%s"
}
settings.window.default_search_engine = "whoogle"
