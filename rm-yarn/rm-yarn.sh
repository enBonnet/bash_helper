GIVE_DIR=$1
EXEC_DIR=$pwd
DIR="$GIVE_DIR$EXEC_DIR"
cd $DIR
if [ ! -d node_modules ] 
then
	echo "node_modules/ not found!"
else
	rm -rf node_modules
fi

if [ ! -f yarn.lock ]
then
	echo "yarn.lock not found!"
else
	rm yarn.lock
fi
npm install
echo "Ready! Change Yarn for Npm on $GIVE_DIR"
