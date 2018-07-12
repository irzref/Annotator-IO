

# add docstart at the beginning

cd train-data

mkdir copy && cp *.txt copy/ && sed -i '1 i\\n-DOCSTART- O\n' copy/*.txt

# merge all training set together

cat copy/*.txt >> train-n.txt

rm -rf copy

cd ../test-data

# rename test file

mv test-0.txt test.txt

cd ..
