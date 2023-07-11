ls images > images_list
grep '^[A-Z][a-z]*$' images_list > valid_names_list.txt
grep 'a$' valid_names_list.txt | wc -l > finish_with_a.txt
zip names.zip images_list valid_names_list.txt finish_with_a.txt images/*