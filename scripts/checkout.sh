jq -c '.[]' checkout.config.json | while read i; do

    name=$( echo $i | jq '.name' )
    branch=$( echo $i | jq '.branch' )

    echo "\n"
    echo Starting with $name:

    temp_name="${name%\"}"
    name="${temp_name#\"}"

    temp_branch="${branch%\"}"   
    branch="${temp_branch#\"}"

    cd $name
    git stash
    git checkout $branch
    git pull
    cd ..
done