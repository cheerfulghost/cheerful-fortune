# cheerful-fortune uses

* jekyll
* bootstrap 4

# install

gem install bundle
bundle

# serve the pages and regenerate when there is a change
bundle exec jekyll serve --watch

# build a fresh version of the site
bundle exec jekyll build --destination docs
echo "jdodson.org" > docs/CNAME
