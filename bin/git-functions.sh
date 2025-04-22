if [ -z "${GITHUB_REPO:-}" ]; then
  upstream_url=$(git config remote.upstream.url)
  GITHUB_REPO=${upstream_url#*:}
fi

if [ $# -gt 0 ]; then
  branch=$1
else
  branch=$(git branch --show-current)
fi

issue="$(git config branch.${branch}.pr || :)"

if [ ! -z "${issue}" ]; then
  printf "\e[0;31m\e]8;;https://github.com/${GITHUB_REPO}/issues/${issue}\e\\#${issue}\e]8;;\e\\"
fi
