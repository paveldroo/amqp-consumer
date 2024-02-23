#!/bin/bash
while IFS= read -r thread
do
  printf "\n$thread\n"
  curl -X POST http://localhost:6000/parse -d "{\"url\":\"$thread\"}"
done < "threads"
