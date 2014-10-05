tweetwatch
===========

Tweetwatch allows you to watch a list of Twitter topics in real time
And Display the N number of most retweeted tweets in the last N minutes.

Installation
------------

Install the requirements with bundle:

```bash
$ bundle install
```

You will also need to install the header files of the sqlite3 library
manually. Use your distribution's package manager.

Setup the database:

```bash
$ bundle exec bin/database setup
```

You can also drop all the tables using `teardown` instead of `setup`.

You will need to edit the `tweetwatch.rb` file and set the list of `TOPICS` you want to watch as well as the Twitter API credentials. 

Run the twitter watcher process:

```bash
$ bundle exec ruby -Ilib bin/tweetwatch
```

Run the web(socket) server:

```bash
$ puma -Ilib config.rb -p 9292
```

Point your browser to `http://localhost:9292`.