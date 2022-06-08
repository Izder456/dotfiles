local globals = {
	homepage = "https://whoogle.herokuapp.com"
}

globals.search_engines = {
	whoogle = "https://whoogle.herokuapp.com/search?q=%s"
	searx = "https://swag.pw/search?q=%s"
}

globals.search_engines.default = globals.search_engines.whoogle
