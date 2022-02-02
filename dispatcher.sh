#!/bin/bash

function print_header {
  cat << EOF
HTTP/1.1 200 OK
Content-type: text/html

EOF
}

function default_page() {
  print_header
  
  cat << EOF
<html>
  <title>bash http server</title>
  <body>
  <h1>Oh, yeah, baby!</h1>
  </body>
</html>
EOF
}

while IFS= read -r line; do
  HTTP_QUERY=$(echo $line | cut -d " " -f 1 )
  if [ $HTTP_QUERY == "GET" ]; then
    default_page
  fi
done
