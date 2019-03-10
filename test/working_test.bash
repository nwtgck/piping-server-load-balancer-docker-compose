#! /bin/bash -xeu

server_port=8080
server_host="localhost"
base_url="http://$server_host:$server_port"

# NOTE: The number of access is 5 because of Pigeonhole principle.
# The number of piping servers is 4 in this setting.
n_paths=5

for n in $(seq $n_paths); do
  path="path$n"
  message="this is a message($n)"
  # Send the message
  echo $message | curl -sST - $base_url/$path &
  sleep 1
  # Get the messsage
  actual=$(curl -sS $base_url/$path)
  sleep 1
  # Check the equality
  [ "$actual" == "$message" ]
done
