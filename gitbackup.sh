#!/bin/sh
github_username="ameer1234567890"
url_start="https://github.com/"
echo "Grabbing list of repositories...."
curl --progress-bar -o repos.json https://api.github.com/users/$github_username/repos
repos="$(grep -Po '"full_name":.*?[^\\]",' repos.json | awk '{print $2}' | tr -d '"' | tr -d ',')"
mkdir -p repos
cd repos || exit
for repo in $repos; do
  repo_name="$(echo "$repo" | cut -d '/' -f 2)"
  if [ ! -d "$repo_name" ]; then
    echo "Cloning new repository $repo_name...."
    git clone "$url_start$repo"
  else
    echo "$repo_name already exists! Pulling any remote changes...."
    cd "$repo_name" || exit
    git pull
    cd ..
  fi
  echo "Done!"
  echo ""
done
cd ..
rm repos.json
echo "All repositories backed up!"
