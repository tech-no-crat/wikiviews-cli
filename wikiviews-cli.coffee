fs = require 'fs'
WikiViews = require 'wikiviews' 
config = require './config.json'

# Override some config parameters with command line arguments, if they are there
if process.argv.length > 2
  config.article = process.argv[2]
if process.argv.length > 3
  config.filename = process.argv[3]

WikiViews config.article, config.start, config.end, (result) ->
  lines = []
  for date, views of result
    lines.push "#{date}, #{views}"
  fs.writeFile config.filename, lines.join("\n"), (err) ->
    return console.log(err) if err

