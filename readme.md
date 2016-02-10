== UI Test Project Layout

* features/*.feature : cucumber features
* features/step_definitions/web_steps.rb : generic steps that apply to all features
* features/step_definintions/[feature]_steps.rb : steps specific to an individual feature file
* support/env.rb : configures the driver and the hostname to use

== Prerequisites

* chromedriver: https://sites.google.com/a/chromium.org/chromedriver/getting-started
* Ruby http://www.ruby-lang.org/en/downloads/
* Ruby Gems http://rubygems.org/
* Bundler: sudo gem install bundler rake

== Configuration

* bundle install

== Running Features

* To run all features: rake
* To run a specific feature: cucumber features/search.feature

== Debugging

* To debug a specific step call save_and_open_page within the step

== Additional Documentation

* http://cukes.info (for general cucumber information)
* https://gist.github.com/zhengjia/428105 (cheetsheet)
* http://github.com/jnicklas/capybara (for actions such as click_link, click_button, etc...)