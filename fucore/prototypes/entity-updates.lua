require "fucore.lib.entity"

scrapper = clone(findEntry(data, "assembling-machine", "assembling-machine-3"))
scrapper.name = "fusion-scrapper"
scrapper.crafting_categories = {"recycle"}
scrapper.minable.result = scrapper.name

data:extend({scrapper})