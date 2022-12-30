local editor = require "editor"
local settings = require "settings"
local engines = settings.window.search_engines
engines.whoogle         = "https://www.whoogle.click/search?q=%s"
engines.searx           = "https://priv.au/search?q=%s"
engines.ddg		= "https://html.duckduckgo.com/html/?q=%s"
engines.frogfind	= "http://frogfind.com/?q=%s"
engines.brave		= "https://search.brave.com/search?q=%s"
engines.openports	= "https://openports.se/search.php?stype=folder&so=%s"
engines.pkgs		= "https://pkgs.org/search/?q=%s"
engines.default = engines.whoogle 
editor.editor_cmd = "xterm -e nvim {file} +{line}"
