# WikiViews CLI

A small script that produces a CSV containing per-day view counts for any wikipedia article. Uses the [wikiviews gem](https://github.com/tech-no-crat/wikiviews).
**All data is from [stats.grok.se](http://stats.grok.se/)**, which gets its data from [dumps.wikimedia.org/other/pagecounts-raw/](http://dumps.wikimedia.org/other/pagecounts-raw/).

## Installation:
1. Install [Node.js](https://nodejs.org/).
2. `git clone` this repository.
3. Inside the project directory run `npm install` to install dependencies.

## Running
1. Edit config.json: you probably want to change the article name and start/end months.
2. Run `node wikiviews-cli.js`. Optionally, you can override the article name and filename by passing them as command-line arguments in this order, i.e. `node wikivies-cli.js Greece greece-wikipedia-views.csv`. By default, the csv will be saved in `views.csv`.
