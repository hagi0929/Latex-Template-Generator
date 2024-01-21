printf "%s" "Enter title: "
read title
printf "%s" "Enter number of questions: "
read num_of_questions

mkdir $title
cd $title
for i in $(seq $num_of_questions)
do
  folder_dir=$title"q"$i
  mkdir $folder_dir
  cd $folder_dir
  cp ~/LatexTemplates/template.tex ./$folder_dir.tex
  cd ..
done
cd ..
echo "title is $title number of question is $num_of_questions"