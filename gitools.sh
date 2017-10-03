PROJECT="streos/"
APPLICATIONS=("baseapp" "cart" "orders" "payment" "shop")
RETURNCD="../.."


echo "What do you do?"
select i in pull push commit status; do
        if [ "$i" = "pull" ]; then
                for i in "${APPLICATIONS[@]}"; do   # The quotes are necessary here
                  cd $PROJECT$i
                  echo "Application : $i"
                  # pull list
                  git pull
                  cd $RETURNCD
                done
                break
        elif [ "$i" = "push" ]; then
                for i in "${APPLICATIONS[@]}"; do   # The quotes are necessary here
                  cd $PROJECT$i
                  echo "Application : $i"
                  # push list
                  git push
                  cd $RETURNCD
                done
                break
        elif [ "$i" = "commit" ]; then
                for i in "${APPLICATIONS[@]}"; do   # The quotes are necessary here
                  cd $PROJECT$i
                  echo "Application : $i"
                  # commit list
                  echo "message : "
                  read MESSAGECOMMIT
                  git commit -am "$MESSAGECOMMIT"
                  cd $RETURNCD
                done
                break
          elif [ "$i" = "status" ]; then
                for i in "${APPLICATIONS[@]}"; do   # The quotes are necessary here
                    cd $PROJECT$i
                    echo "Application : $i"
                    # status list
                    git status
                    cd $RETURNCD
                  done
                  break
        else
                echo "Ceci n'existe pas"
        fi
done
