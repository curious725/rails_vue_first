command to start app
docker-compose run web rails new . --force --database=postgresql --webpack
for rails 4.2 --webpack maybe not working, we need manually add
gem webpacker to Gemfile
rake webpacker:install

Next, add <%= javascript_pack_tag 'application' %> in your layouts/application.html.erb view to include the application.js file from app/javascripts/packs/.

And we are done!

Now while developing, run ./bin/webpack-dev-server alongside rails serve.

To deploy, do nothing! Webpacker hooks up a new webpacker:compile task to assets:precompile, which gets run whenever you run assets:precompile. The javascript_pack_tag and stylesheet_pack_tag helper method will automatically insert the correct HTML tag for compiled pack.
