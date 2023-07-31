
if [ -z "$1" ]; then
  location="$(whoami)_project"
else
  location="$1"
fi

cd ~

mkdir -p projects/$location

cd projects/$location

touch run.sh

chmod +x run.sh

echo "mkdir -p build 

mv ./src/header/*.h ./src/

g++ ./src/index.cpp -o $(pwd)/build/exec.exe

./build/exec.exe

mv ./src/*.h ./src/header/ 
" > run.sh

mkdir src

touch src/index.cpp

cd src

mkdir header

cd header

touch default.h

cd ../

echo '#include "iostream"

using namespace std;

int main(){
    
    cout<<"Hello World"<<endl;

    return 0;
}' > index.cpp


