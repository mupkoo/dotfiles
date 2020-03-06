function kill_port
  lsof -t -i:$argv | xargs kill -9
end
