function Count(report)

report=lower(report); 
report=regexprep(report,'\W+',' '); %ȥ���ַ�
report=regexprep(report,'\d+',' '); %ȥ������
words=regexp(report,' ','split')'; %�ֽⵥ��

rank = tabulate(words); %�����ƣ��������ٷֱȣ�
Fre =sortrows(rank,-2); %��������
xlswrite('results',Fre);
end