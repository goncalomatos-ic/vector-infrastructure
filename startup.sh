API_DIR="vector-api"
if [ -d "$API_DIR" ]; then
  ### Delete current dir and fetch latest code from Github
  echo "Removing old API code..."
  rm -rf vector-api
  git clone git@github.com:goncalomatos-ic/vector-api.git
else
  git clone git@github.com:goncalomatos-ic/vector-api.git
fi

APP_DIR="vector-app"
if [ -d "$APP_DIR" ]; then
  ### Delete current dir and fetch latest code from Github
  echo "Removing old APP code..."
  rm -rf vector-app
  git clone git@github.com:goncalomatos-ic/vector-app.git
else
  git clone git@github.com:goncalomatos-ic/vector-app.git
fi

docker-compose build

docker-compose up