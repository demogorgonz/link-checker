# link-checker
Fast link checker with integrated web server.

Project depends on apache2 and [muffet](https://github.com/raviqqe/muffet)

General usage is to test local web files for invalid internal and external links e.g static website builders.


## Example Usage:

```bash
docker run -v ${PWD}/path/to/dir/site:/var/www/localhost/htdocs -d --name lc-web gitlab.nil.rs:4567/fstreoski/link-checker:latest /usr/sbin/httpd -D FOREGROUND
docker exec -i lc-web muffet -v -p -c 10 http://localhost
```

### Muffet

```
Usage:
	muffet [-b <size>] [-c <concurrency>] [-e <pattern>...] [-f] [-j <header>...] [-l <times>] [-p] [-r] [-s] [-u] [-t <seconds>] [-v] [-x] <url>

Options:
	-b, --buffer-size <size>          Set HTTP response buffer size in bytes. [default: 4096]
	-c, --concurrency <concurrency>   Roughly maximum number of concurrent HTTP connections. [default: 512]
	-e, --exclude <pattern>...        Exclude URLs matched with given regular expressions.
	-f, --ignore-fragments            Ignore URL fragments.
	-h, --help                        Show this help.
	-j, --header <header>...          Set custom headers.
	-l, --limit-redirections <times>  Limit a number of redirections. [default: 64]
	-p, --one-page-only               Only check links found in the given URL, do not follow links.
	-r, --follow-robots-txt           Follow robots.txt when scraping.
	-s, --follow-sitemap-xml          Scrape only pages listed in sitemap.xml.
	-u, --follow-url-params           Will not cut off the URL parameters.
	-t, --timeout <seconds>           Set timeout for HTTP requests in seconds. [default: 10]
	-v, --verbose                     Show successful results too.
	-x, --skip-tls-verification       Skip TLS certificates verification.
```
