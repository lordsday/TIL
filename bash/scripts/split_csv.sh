filename=$1
line=$2

tail -n +2 $filename | split -d -l $line - split_
for file in split_*
do
    head -n 1 $filename > tmp_file
    cat $file >> tmp_file
    mv -f tmp_file $file
done

