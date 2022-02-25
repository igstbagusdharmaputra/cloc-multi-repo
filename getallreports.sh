cd reports
ARGS=$(cat /data/list/repolist.txt)

cloc --sum-reports --out=sumofrepos ${ARGS}
