Assignment - 1 :

-Download results of S1, S2
    -Convert to text file
    -Sort out CS results
    -Calculate SGPA of S1, S2
    -Calculate CGPA of both together

using shell scripting.

Approach :

   -Downloaded results from https://ktu.edu.in/eu/res  /viewExamResults.htm?examDefIdEnr=LpBmCci4xl%2BUU1ElM5Ta7ur7NwV9ySMu8tz0hktxfio%3D&type=33X30ZkQBhbZtfM52WojhuPuSdt1pxpni%2FaM98VfPH4%3D&publishId=pCMWMQ%2BL4VDY%2BvpE2LT5AZ7kbSeO3hZL1ABW%2BR64%2FbY%3D
      and https://ktu.edu.in/eu/res/viewExamResults.htm?examDefIdEnr=zs9fqD1WgQBNULcEU3RHXkxf5ytthg%2BjxnA6VxJX1U8%3D&type=SrSoPQX151njZBF7q2nJCO9gXCagIo7Rm%2F3K7TCAaMM%3D&publishId=kwVuXW6j238IkZiTwC2%2FolddacqX%2FHXt7Z2oFUyqJIs%3D
    -Converted downloaded PDFs to text files.
    -Extracted the results from the two text files above.
    -Removed newlines, spaces, tabs, nulls etc.
    -Added newlines to each substring 'MDL' in both text files.
    -Added newlines to each substring 'CY100' in S2.txt
    -Added newlines to each substring 'MA101' in S1.txt
    -Replaced grades with grade points corresponding to each subject in line with roll no in both text files.    
    -Removed each subject name leaving only grade point of each subject in line with roll no in both text files.
    -Summed up product of grade point and the credit corresponding to the subject. 
    -Joined both text files in format '$roll $sgpa1 $sgpa2.
    -Calculated CGPA by taking average of SGPA1 and SGPA2
    -Downloaded C4B student list using wget from http://14.139.184.212/ask/c4b/c4b.txt
    -Joined both files to get CGPA of only C4B students
    -Filtered out only MDL roll numbers,CGPA and Name and wrote to file in format '$roll $cgpa $name'
