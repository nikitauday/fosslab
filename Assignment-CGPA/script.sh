$(wget "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=iDJDzGs%2BnvVJg%2BBuOvdJPtlVPGItZW5pd6CfS0nEr58%3D" -O S1.pdf)
$(wget "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=gH7TfuJh%2B2jJEDnnZhsZ%2BpmpN6K%2FSscvVS73NsF7H88%3D" -O S2.pdf)
$(pdftotext -layout -f 8 -l 15 S1.pdf S1.txt)
$(pdftotext -layout -f 8 -l 14 S2.pdf S2.txt)
$(grep -A 361 "MDL16CS001 " S1.txt>1CS.txt)
$(grep -A 361 "MDL16CS001 " S2.txt>2CS.txt)
$(tr -d " \n\t\r" <1CS.txt>temp.txt)
$(cp temp.txt 1CS.txt)
$(tr -d " \n\t\r" <2CS.txt>temp.txt)
$(cp temp.txt 2CS.txt)						#10
$(sed -i 's/MDL/\nMDL/g' 1CS.txt)
$(sed -i 's/CY100/\nCY100/g' 1CS.txt)
$(sed -i 's/MDL/\nMDL/g' 2CS.txt)
$(sed -i 's/MA101/\nMA101/g' 2CS.txt)				#14
$(sed -i -e "s/(O)/(10)/g" -e "s/(A+)/(9)/g" -e "s/(A)/(8.5)/g" -e "s/(B+)/(8)/g" -e "s/(B)/(7)/g" -e "s/(C)/(6)/g" -e "s/(P)/(5)/g" -e "s/(F)/(0)/g" -e "s/(FE)/(0)/g" -e "s/(I)/(0)/g" 1CS.txt)
$(sed -i -e "s/(O)/(10)/g" -e "s/(A+)/(9)/g" -e "s/(A)/(8.5)/g" -e "s/(B+)/(8)/g" -e "s/(B)/(7)/g" -e "s/(C)/(6)/g" -e "s/(P)/(5)/g" -e "s/(F)/(0)/g" -e "s/(FE)/(0)/g" -e "s/(I)/(0)/g" 2CS.txt)
$(sed -i -e "s/MA101(/\t  /g" -e "s/),PH100(/\t  /g" -e "s/),BE110(/\t  /g" -e "s/),BE10105(/\t  /g" -e "s/),BE103(/\t  /g" -e "s/),EE100(/\t  /g" -e "s/),PH110(/\t  /g" -e "s/),EE110(/\t  /g" -e "s/),CS110(/\t  /g" 1CS.txt)
$(sed -i -e "s/)/\t/g" 1CS.txt)
$(sed -i -e "s/CY100(/\t  /g" -e "s/),BE100(/\t  /g" -e "s/),EC100(/\t  /g" -e "s/),CY110(/\t  /g" -e "s/),EC110(/\t  /g" -e "s/),MA102(/\t  /g" -e "s/),BE102(/\t  /g" -e "s/),CS100(/\t  /g" -e "s/),CS120(/\t  /g" -e "s/),CS120(/\t  /g" 2CS.txt)
$(sed -i -e "s/)/\t/g" 2CS.txt)  			#20
#$(join 1CS.txt 2CS.txt | paste>S1S2.txt)
awk -i inplace '{sum=0; sum=sum+(($2)*4 + ($3)*4 + ($4)*3 + ($5)*3 + ($6)*3 + ($7)*3 + ($8)*1 + ($9)*1 + ($10)*1); {printf("%s %.2f\n",$1,sum/23);}}' 1CS.txt
awk -i inplace '{sum=0; sum=sum+(($2)*4 + ($3)*4 + ($4)*3 + ($5)*1 + ($6)*1 + ($7)*4 + ($8)*3 + ($9)*3 + ($10)*1); {printf("%s %.2f\n",$1,sum/24);}}' 2CS.txt
join 1CS.txt 2CS.txt|paste>S1S2.txt
awk '{sum=0; sum=sum+($2+$3); {printf("%s %.2f\n",$1,sum/2);}}' S1S2.txt>SGPA.txt 
wget "http://14.139.184.212/ask/c4b/c4b.txt" C4B.txt
join -1 1 -2 6 SGPA.txt C4B.txt|paste>temp.txt		#to join cgpa and class list 
cut -d' ' -f1,2,8- temp.txt|paste>CGPA.txt
rm temp.txt
cat CGPA.txt

