echo "START APP"
bundle exec unicorn -c config/unicorn.rb -D -E production
echo "started unicorn"
#bundle exec sidekiq -d -e production -l log/sidekiq.log -P tmp/pids/sidekiq.pid
#echo "started sidekiq"
#echo "starting rapns"
#bundle exec rapns production
#echo "started rapns"
