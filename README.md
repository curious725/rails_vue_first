command to start app
docker-compose run web rails new . --force --database=postgresql --webpack
for rails 4.2 --webpack maybe not working, we need manually add
gem webpacker to Gemfile
rake webpacker:install
