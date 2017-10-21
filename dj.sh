PROJECT="projectname/"
APPLICATIONS=("baseapp" "cart" "orders" "payment" "shop")
RETURNCD="../.."
# DATAJSON=(" ") for a specific file json

echo "What do you do?"
select i in run makemigrations migrate showmigrations \test createsuperuser deletemigrations; do
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
        elif [ "$i" = "createsuperuser" ]; then
                cd $PROJECT
                python3 manage.py createsuperuser
                exit
                break
        elif [ "$i" = "loaddata" ]; then
                cd $PROJECT
                #python3 manage.py loaddata $APPLICATIONS/fixtures/*
                exit
                break
        elif [ "$i" = "deletemigrations" ]; then
                cd $PROJECT
                find . -path "*/migrations/*.py" -not -name "__init__.py" -delete
                find . -path "*/migrations/*.pyc"  -delete
                # if you delete the database
                find . -name "db.sqlite3" -delete
                exit
                break

        else
<<<<<<< HEAD

                echo "Ceci n'existe pas"
=======
                echo "It's not exist"
>>>>>>> a3906165e97218d53c19c28b32c835b998bcaa0b
        fi
done
