%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<˵��>>>>>>>>>>>>>>>>>>>>>>>>>>>
%���������matlab�����д����matlab���ԣ���Դ�����׺��Ϊ.m��������
%matlab����򿪺����У������input.txt��������������output.txt��
%Ҳ�����ü��±��򿪡�

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>���뿪ʼ>>>>>>>>>>>>>>>>>>>>>>>>>>>
clc;   clear all;               %���ϵͳ֮ǰ�ļ�¼                
%��input.txt,����input.txt��ߵ����ݴ���fidin��
fidin=fopen('input.txt');   
%�����Լ�Ҫ��д��Ľ���ĵ�output.txt
fidout=fopen('output.txt','w');                      
i=1;
trans=[0.0,0.0,0.0,0.0,0.0,0.0];                    %��λת������洢����trans          
while ~feof(fidin)                                     % �ж��Ƿ�Ϊ�ļ�ĩβ               
    tline=fgetl(fidin);                             % �������ļ�������ÿ�ζ�һ��    
    %��һ������ȡ��λת������
    if i<=6
         [a,b,c,tran,d]=strread(tline,'%f%s%s%f%s','delimiter',' ');   %�õ����������ת������tran
         trans(i)=tran;                           %����ȡ�����������ת�����ݴ�������trans��
       if i==1
          tline='zhanjieliu@163.com';
          fprintf(fidout,'%s\n',tline);    %���output.txt�ĵ�һ�����Լ���������������ע�������
       elseif i==2
          tline='';
          fprintf(fidout,'%s\n',tline);             %���output.txt�ĵڶ����ǿ���   
       end
    %�ڶ��������㵥λ��ͬ���ȵļӼ����ʽ��������������3--12��
    elseif  i>=8&&i<=13 
          [result,uint]=strread(tline,'%f%s','delimiter',' ');        %��ȡ��ͬ��λ���ȼӼ����ʽ������ݺ͵�λ�����ݴ���result����λ����uint��
          uint=uint{1};                            %�������ĵ�λ���ݸ�ʽת�����ַ�����ʽ
          %�ж϶�ȡ���ĵ�λ�������ݶ��������ݼ�������������ݴ���result
          if strcmp(uint,'miles')|strcmp(uint,'mile')
              result=result*trans(1);
          elseif  strcmp(uint,'yard')|strcmp(uint,'yards')
              result=result*trans(2);
          elseif  strcmp(uint,'inch')|strcmp(uint,'inches')
              result=result*trans(3);
          elseif  strcmp(uint,'foot')|strcmp(uint,'feet')
              result=result*trans(4);
          elseif  strcmp(uint,'fath')|strcmp(uint,'faths')
              result=result*trans(5);
          elseif  strcmp(uint,'furlong')|strcmp(uint,'furlongs')
              result=result*trans(6);
          end
          %�������Ա�����λС���ӵ�λ���м��һ�������output.txt����Ӧ����
          fprintf(fidout,'%.2f',result);
          tline=' m';
          fprintf(fidout,'%s\n',tline);
    elseif i>=14&&i<=15
         [result1,uint1,s1,result2,uint2]=strread(tline,'%f%s%s%f%s','delimiter',' ');    %��ȡ��ͬ��λ���ȼӼ����ʽ������ݺ͵�λ
         uint1=uint1{1};s1=s1{1};uint2=uint2{1};        %�������ĵ�λ���ݸ�ʽת�����ַ�����ʽ
         %�ж϶�ȡ���ĵ�λ����ţ������ݶ��������ݼ�������������ݴ���result
           if strcmp(uint1,'miles')|strcmp(uint1,'mile')
              result1=result1*trans(1);
          elseif  strcmp(uint1,'yard')|strcmp(uint1,'yards')
              result1=result1*trans(2);
          elseif  strcmp(uint1,'inch')|strcmp(uint1,'inches')
              result1=result1*trans(3);
          elseif  strcmp(uint1,'foot')|strcmp(uint1,'feet')
              result1=result1*trans(4);
          elseif  strcmp(uint1,'fath')|strcmp(uint1,'faths')
              result1=result1*trans(5);
          elseif  strcmp(uint1,'furlong')|strcmp(uint1,'furlongs')
              result1=result1*trans(6);
           end
            if strcmp(uint2,'miles')|strcmp(uint2,'mile')
              result2=result2*trans(1);
          elseif  strcmp(uint2,'yard')|strcmp(uint2,'yards')
              result2=result2*trans(2);
          elseif  strcmp(uint2,'inch')|strcmp(uint2,'inches')
              result2=result2*trans(3);
          elseif  strcmp(uint2,'foot')|strcmp(uint2,'feet')
              result2=result2*trans(4);
          elseif  strcmp(uint2,'fath')|strcmp(uint2,'faths')
              result2=result2*trans(5);
          elseif  strcmp(uint2,'furlong')|strcmp(uint2,'furlongs')
              result2=result2*trans(6);
            end  
          if strcmp(s1,'+')
              result=result1+result2;
          else 
              result=result1-result2;
          end  
          %�������Ա�����λС���ӵ�λ���м��һ�������output.txt����Ӧ����
          fprintf(fidout,'%.2f',result);
          tline=' m';
          fprintf(fidout,'%s\n',tline);  
     elseif i>=16&&i<=17
         [result1,uint1,s1,result2,uint2,s2,result3,uint3]=strread(tline,'%f%s%s%f%s%s%f%s','delimiter',' '); %��ȡ��ͬ��λ���ȼӼ����ʽ������ݺ͵�λ
         uint1=uint1{1};s1=s1{1};uint2=uint2{1};s2=s2{1};uint3=uint3{1};    %�������ĵ�λ���ݸ�ʽת�����ַ�����ʽ
         %�ж϶�ȡ���ĵ�λ����ţ������ݶ��������ݼ�������������ݴ���result
           if strcmp(uint1,'miles')|strcmp(uint1,'mile')
              result1=result1*trans(1);
          elseif  strcmp(uint1,'yard')|strcmp(uint1,'yards')
              result1=result1*trans(2);
          elseif  strcmp(uint1,'inch')|strcmp(uint1,'inches')
              result1=result1*trans(3);
          elseif  strcmp(uint1,'foot')|strcmp(uint1,'feet')
              result1=result1*trans(4);
          elseif  strcmp(uint1,'fath')|strcmp(uint1,'faths')
              result1=result1*trans(5);
          elseif  strcmp(uint1,'furlong')|strcmp(uint1,'furlongs')
              result1=result1*trans(6);
           end
            if strcmp(uint2,'miles')|strcmp(uint2,'mile')
              result2=result2*trans(1);
          elseif  strcmp(uint2,'yard')|strcmp(uint2,'yards')
              result2=result2*trans(2);
          elseif  strcmp(uint2,'inch')|strcmp(uint2,'inches')
              result2=result2*trans(3);
          elseif  strcmp(uint2,'foot')|strcmp(uint2,'feet')
              result2=result2*trans(4);
          elseif  strcmp(uint2,'fath')|strcmp(uint2,'faths')
              result2=result2*trans(5);
          elseif  strcmp(uint2,'furlong')|strcmp(uint2,'furlongs')
              result2=result2*trans(6);
            end 
             if strcmp(uint3,'miles')|strcmp(uint3,'mile')
              result3=result3*trans(1);
          elseif  strcmp(uint3,'yard')|strcmp(uint3,'yards')
              result3=result3*trans(2);
          elseif  strcmp(uint3,'inch')|strcmp(uint3,'inches')
              result3=result3*trans(3);
          elseif  strcmp(uint3,'foot')|strcmp(uint3,'feet')
              result3=result3*trans(4);
          elseif  strcmp(uint3,'fath')|strcmp(uint3,'faths')
              result3=result3*trans(5);
          elseif  strcmp(uint3,'furlong')|strcmp(uint3,'furlongs')
              result3=result3*trans(6);
             end
          if strcmp(s1,'+')
              result=result1+result2;
          else 
              result=result1-result2;
          end
          if strcmp(s2,'+')
              result=result+result3;
          else 
              result=result-result3;
          end
         %�������Ա�����λС���ӵ�λ���м��һ�������output.txt����Ӧ���� 
         fprintf(fidout,'%.2f',result);
         tline=' m';
         if i==16
         fprintf(fidout,'%s\n',tline);
         else
           fprintf(fidout,'%s',tline);
         end
    end
    i=i+1; 
end
%ִ����ϣ��ر�����ļ�
fclose(fidout);
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>�������>>>>>>>>>>>>>>>>>>>>>>>>>>>

