PROJECT="projectname/"
APPLICATIONS=("baseapp" "cart" "orders" "payment" "shop")
RETURNCD="../.."


echo "What do you do?"
select i in run makemigrations migrate showmigrations \test; do
        if [ "$i" = "run" ]; then
                cd $PROJECT
                python3 manage.py runserver
                exit
                break
        elif [ "$i" = "makemigrations" ]; then
                cd $PROJECT
                python3 manage.py makemigrations
                exit
                break
        elif [ "$i" = "migrate" ]; then
                cd $PROJECT
                python3 manage.py migrate
                exit
                break
        elif [ "$i" = "showmigrations" ]; then
                cd $PROJECT
                python3 manage.py showmigrations
                exit
                break
        elif [ "$i" = "test" ]; then
                cd $PROJECT
                python3 manage.py test
                exit
                break
        else
                echo "It's not exist"
        fi
done
