string=""
x=1
j=1
while [ $x -le 1 ]
do
 rm -rf random*
 string="touch randomfile$((j+x)) && git add . && git commit -m '$((j+x)):randfile_$((j+x))'"
 echo $string
 eval "$string"
 x=$[$x+1]
 sleep 60.0
 git push
 #git tag -a Pt100.$((j+x)) -m "vversion Pt10.1$((j+x))"
 #git push --tags origin
done
#git push
