config.load_autoconfig()
c.url.start_pages = ["http://68k.news/"]
c.url.searchengines = {
    "DEFAULT": "https://swag.pw/search?q={}",
	"whoogle": "https://whoogle.herokuapp.com/search?q={}", 
	"ddg": "https://html.duckduckgo.com/html/?q={}", 
	"frog": "http://frogfind.com/?q={}"
}
