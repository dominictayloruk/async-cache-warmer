# Async-cache-warmer
Asynchronous website cache warmer. Initially created to warm up a website cache.

The main purpose of the script is to "warm up" website cache after flushing it. Script parses sitemap.xml file and asynchronously loads each page.

## Usage:
1)./main.py -h
```
usage: main.py [-h] [-s SITES] [-l LIMIT]

Asynchronous Cache Warmer

optional arguments:
  -h, --help            show this help message and exit
  -s SITES, --site SITES
  -l LIMIT, --limit LIMIT
```
Example:
./main.py -s "<URL/with/path/to/sitemap.xml>" -s "<URL/with/path/to/sitemap.xml>" -l <number of concurrent threads>

2) docker run dominictayloruk/async-cache-warmer -h
```
usage: main.py [-h] [-s SITES] [-l LIMIT]

Asynchronous Cache Warmer

optional arguments:
  -h, --help            show this help message and exit
  -s SITES, --site SITES
  -l LIMIT, --limit LIMIT
```

Example:

docker run dominictayloruk/async-cache-warmer -s "<URL1/with/path/to/sitemap.xml>" -s "<URL2/with/path/to/sitemap.xml>" -l <number of concurrent threads>

## Examples:
