# Cheerful Fortune

Cheerful Fortune looks to recreate some of the functionality of BSD Fortune in
a single page web app and add new stuff like text-to-speech functionality.  

We use Jekyll to manage the site, Bootstrap to make things pretty and jQuery to
load the fortune files and randomly select a good one.

The fortune files were pulled from the original BSD Fortune and many other sources
 cited below.

* Jekyll
* Bootstrap
* jQuery
* JavaScript SpeechSynthesisUtterance API

# Fortune sources

* https://github.com/ruanyf/fortunes/ - Used the main fortune file as it contains some quotes not in other files that are interesting.
* https://svnweb.freebsd.org/base/head/usr.bin/fortune/datfiles/?pathrev=325827 - Pulled BSD Fortune files after the removed the Hitler quotes but before they removed them entirely.  We use the main fortune & startrek files.
* https://github.com/bmc/fortunes/ - Use BMC's fortune file.  It's similar to BSD Fortune but with a few changes.
* http://fortunes.cat-v.org/kernelnewbies/ - Need slightly more Linux kernel quotes.

# Adding a new Fortune source

Make sure to add the new fortune source to the /fortunes directory noting where you got it.  After you
add the files you will need to update the rakefile.rb and add the new fortune files and then run rake.
Running the rakefile will generate a new JavaScript Hash object that will list all the fortune files
 and how many fortunes are in it.  This is so JavaScript can properly randomize between fortunes without
  loading each file.  This optimization was made to save to save bandwidth on each page load.

# Text to Speech

Cheerful Fortune uses the brand new Text to Speech JavaScript API that's now quite common among modern browsers.  We use the stock browser implementation documented well below.

https://developers.google.com/web/updates/2014/01/Web-apps-that-talk-Introduction-to-the-Speech-Synthesis-API

# install

gem install bundle
bundle

# serve the pages and regenerate when there is a change
bundle exec jekyll serve --watch

# build a fresh version of the site
bundle exec jekyll build --destination docs
