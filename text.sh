arr=(1 4 3 2 7 6 9 8)
for((i=0;i<${#arr[@]};i++)){
    for((j=0;j<${#arr[@]}-1;j++)){
        if [[ ${arr[j]} -gt ${arr[j + 1]} ]]
        then
            temp=${arr[j + 1]}
            arr[j + 1]=${arr[j]}
            arr[j]=$temp
        fi
    }
}
echo ${arr[@]}

echo "please enter the number to arr:"
read -a arr
x=0
j=0
while [ $x -lt ${#arr[@]} ]
do
    while [ $j -lt ${#arr[@]}-1 ]
    do
        if [[ ${arr[j]} -gt ${arr[j + 1]} ]]
        then
            temp=${arr[j + 1]}
            arr[j + 1]=${arr[j]}
            arr[j]=$temp
        fi
        j=$j + 1
    done
    x=$x + 1
done
echo ${arr[@]}
