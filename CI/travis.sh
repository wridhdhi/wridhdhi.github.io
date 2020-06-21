gem install em-websocket
bundle update
bundle install --path .bundle --full-index
echo "Updated Bundle Install from the Gemfile.lock"
bundle exec jekyll build
echo "Build completed . Should deploy now"