cd ..
mkdir -p final_images
echo "CROPED"
ls ./cropped_images
ls ./cropped_images > ./final_images/valid_images.txt
ls ./images > ./final_images/images.txt
ls ./images | grep "a$" > ./final_images/finish_with_a.txt
mv ./images ./final_images
tar zcvf final_images.tar.gz final_images

