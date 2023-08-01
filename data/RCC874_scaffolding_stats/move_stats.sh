for file in ../*_to_RCC874
do
echo $file
sample=$(basename $file | sed 's/_to_RCC874//g')

if [[ "$sample" != "RCC874" ]]
then
echo $sample
cp $file/bbmap/${sample}_to_RCC874_stats.txt .

fi
done

