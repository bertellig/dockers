#!/bin/bash
 
printf "\n\n"
echo ""
printf "%s)\t%s\n" "0" "EXIT"
echo ""
printf "%s)\t%s\n" "1" "Stop and Start Elasticsearch"
echo ""
printf "%s)\t%s\n" "2" "Stop Elasticsearch"
echo ""
 

function StopAndStartElasticSearch() {
  cd elasticsearch
  sh start-elastic.sh
}
 
function StopElasticSearch() {
  cd elasticsearch
  sh stop-elastic.sh
}
 
read -p "Select Option: " -r OPTION
 
function executeOption() {
 
  OPTION=$1
 
  case "$OPTION" in
  "0")
    exit
    ;;
  "1")
    StopAndStartElasticSearch
    ;;
  "2")
    StopElasticSearch
    ;;
  esac
 
  return 0
}
 
executeOption "$OPTION"
 
exit 0
 
 