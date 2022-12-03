IFS=$'\n'
blog="/Users/m/VS"
dir="/Users/m/VS/content/posts"
obs="/Users/m/tresor"
static="/Users/m/VS/static/obsidian/"
  
  
cd $dir ;rm $dir/*; grep -rl 'publish: true' $obs |xargs -I {} cp {} $dir
rm ${static}/*
for file in $(find ${dir} -type f -name "*.md"); do
	for priloha in $(perl -p -e 's/\%(\w\w)/chr hex $1/ge' ${file} | grep "\[.*\]\(.*\)" | perl -ne 'm/\[\[(.*)\]\]/ && print $1."\n"' | grep -v ".md$"); do
		find $obs -name $priloha |xargs -I {} cp {} $static
	done
	perl -p -i -e 's/\[\[(\w+)\]\]/\[image\]\(\/obsidian\/$1\)/g' ${file}
	sed -i -e "/\[\w+]\(\w+\)/ s/ /%20/g" ${file}
done
  
cd $blog
git add --all
git commit -m 'conversion from Obsidian vault'
git push