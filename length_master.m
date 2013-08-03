%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<说明>>>>>>>>>>>>>>>>>>>>>>>>>>>
%本代码采用matlab软件编写，用matlab语言，该源代码后缀名为.m，可以用
%matlab软件打开和运行，会读入input.txt，输出结果会生成output.txt，
%也可以用记事本打开。

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>代码开始>>>>>>>>>>>>>>>>>>>>>>>>>>>
clc;   clear all;               %清空系统之前的记录                
%打开input.txt,并将input.txt里边的数据存于fidin中
fidin=fopen('input.txt');   
%创建自己要求写入的结果文档output.txt
fidout=fopen('output.txt','w');                      
i=1;
trans=[0.0,0.0,0.0,0.0,0.0,0.0];                    %单位转换规则存储数组trans          
while ~feof(fidin)                                     % 判断是否为文件末尾               
    tline=fgetl(fidin);                             % 从输入文件数据中每次读一行    
    %第一步：读取单位转换规则
    if i<=6
         [a,b,c,tran,d]=strread(tline,'%f%s%s%f%s','delimiter',' ');   %得到的运算规则转换数据tran
         trans(i)=tran;                           %将读取到的运算规则转换数据存入数组trans中
       if i==1
          tline='zhanjieliu@163.com';
          fprintf(fidout,'%s\n',tline);    %输出output.txt的第一行是自己在渣打编程马拉松注册的邮箱
       elseif i==2
          tline='';
          fprintf(fidout,'%s\n',tline);             %输出output.txt的第二行是空行   
       end
    %第二步：计算单位不同长度的加减表达式，并将结果输出到3--12行
    elseif  i>=8&&i<=13 
          [result,uint]=strread(tline,'%f%s','delimiter',' ');        %读取不同单位长度加减表达式里的数据和单位，数据存于result，单位存于uint中
          uint=uint{1};                            %将读到的单位数据格式转化成字符串格式
          %判断读取到的单位，并根据读到的数据计算结果，结果数据存于result
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
          %计算结果以保留两位小数加单位（中间空一格）输出到output.txt的相应行上
          fprintf(fidout,'%.2f',result);
          tline=' m';
          fprintf(fidout,'%s\n',tline);
    elseif i>=14&&i<=15
         [result1,uint1,s1,result2,uint2]=strread(tline,'%f%s%s%f%s','delimiter',' ');    %读取不同单位长度加减表达式里的数据和单位
         uint1=uint1{1};s1=s1{1};uint2=uint2{1};        %将读到的单位数据格式转化成字符串格式
         %判断读取到的单位与符号，并根据读到的数据计算结果，结果数据存于result
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
          %计算结果以保留两位小数加单位（中间空一格）输出到output.txt的相应行上
          fprintf(fidout,'%.2f',result);
          tline=' m';
          fprintf(fidout,'%s\n',tline);  
     elseif i>=16&&i<=17
         [result1,uint1,s1,result2,uint2,s2,result3,uint3]=strread(tline,'%f%s%s%f%s%s%f%s','delimiter',' '); %读取不同单位长度加减表达式里的数据和单位
         uint1=uint1{1};s1=s1{1};uint2=uint2{1};s2=s2{1};uint3=uint3{1};    %将读到的单位数据格式转化成字符串格式
         %判断读取到的单位与符号，并根据读到的数据计算结果，结果数据存于result
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
         %计算结果以保留两位小数加单位（中间空一格）输出到output.txt的相应行上 
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
%执行完毕，关闭输出文件
fclose(fidout);
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>代码结束>>>>>>>>>>>>>>>>>>>>>>>>>>>

