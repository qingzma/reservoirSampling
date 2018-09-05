start=$(date +%s.%N)
cat 1t.csv | ./reservoir.py 100000 >deletable.csv
# cat 100k.csv | ./reservoir.py 10000 >deletable.csv
end=$(date +%s.%N)    
runtime=$(python -c "print(${end} - ${start})")
echo "Runtime was $runtime"