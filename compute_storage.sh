du -h --max-depth=2 ../.  | sort -n -r > size_by_folder.txt
egrep "[0-9]+G" size_by_folder.txt 
egrep "[0-9]+G" size_by_folder.txt > sorter_folder
egrep "[0-9]+M" size_by_folder.txt >> sorter_folder
egrep "[0-9]+K" size_by_folder.txt >> sorter_folder
find ../. -size +100000k -print0 | xargs -0 du -sh | sort -n -r > size_by_file.txt
egrep "[0-9]+G" size_by_file.txt > sorted_file
egrep "[0-9]+M" size_by_file.txt >> sorted_file
egrep "[0-9]+K" size_by_file.txt >> sorted_file
