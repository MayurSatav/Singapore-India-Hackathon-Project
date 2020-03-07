#pip3 install pip3 --upgrade
#pip3 install -r requirements.txt

docker pull trgianglotus/image-sentiment:0.1
docker run -d -p 3333:3333 trgianglotus/image-sentiment:0.1

cd services/webapp
#python3 -m spacy download en_core_web_sm
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver &
python3 manage.py process_tasks
