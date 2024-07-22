# running all the scripts in the dependencies folder (without this file)

current_file=$(basename $0)
for file in $(ls $(dirname $0) | grep -v $current_file); do
    echo "Running $file in 5 seconds"
    sleep 5
    echo "Running $file"
    bash $(dirname $0)/$file
done