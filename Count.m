function Count(report)

report=lower(report); 
report=regexprep(report,'\W+',' '); %去除字符
report=regexprep(report,'\d+',' '); %去除数字
words=regexp(report,' ','split')'; %分解单词

rank = tabulate(words); %（名称，次数，百分比）
Fre =sortrows(rank,-2); %降序排列
xlswrite('results',Fre);
end