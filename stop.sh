unicorn_pid=`cat tmp/pids/unicorn.pid`
#rapns_pid=`cat tmp/pids/rapns.pid`
#sidekiq_pid=`cat tmp/pids/sidekiq.pid`

echo "Unicorn:" $unicorn_pid
#echo "Rapns:" $rapns_pid
#echo "Sidekiq:" $sidekiq_pid

kill -9 $unicorn_pid
echo "stopping unicorn"
# kill -9 $rapns_pid
# echo "stooping rapns"
# kill -9 $sidekiq_pid
# echo "stopping sidekiq"