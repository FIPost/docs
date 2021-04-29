jq -c '.[].remote' repos.json | while read i; do
    temp="${i%\"}"
    remote="${temp#\"}"
    git clone $remote
done