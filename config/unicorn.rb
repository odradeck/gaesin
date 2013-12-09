APP_PATH = "/home/odradeck/project/mz"
working_directory APP_PATH
pid APP_PATH + "/tmp/pids/unicorn.pid"

stderr_path APP_PATH + "/log/unicorn.stderr.log"
stdout_path APP_PATH + "/log/unicorn.stderr.log"

listen "/tmp/unicorn.mz.sock"
worker_processes 2 
timeout 30