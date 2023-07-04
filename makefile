readme.md: 
  echo "Title of the Project: guessinggame.sh \n" > readme.md
  $(date +"%Y_%m_%d_%I_%M_%p") >> readme.md
  wc -l programming.txt >> readme.md
