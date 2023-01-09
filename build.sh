cd frontend || exit
npm run build
rm -rf ../backend/src/main/resources/static
cp build ../backend/src/main/resources/static
cd ../backend || exit
./mvnw clean package
cd ..
docker build -t fullstack-demo:latest .