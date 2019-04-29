window=1800;
sm1=sm1';
vop=VOP';
vop=vop*2;
aa=size(vop);
bb=size(sm1);
runa=aa(1,1);
runb=bb(1,1);
sv=[];
dv=[];
countv=1;
countw=1;
countm=1;
DV=size(vop);
DDv=[]
%runn=runn-1;
for b=1:runa
    for a=1:runb
    if abs(vop(b)-sm1(a))<=window
        dv(countv)=vop(b);
        DDv(countv)=sm1(a);
        countv=countv+1;
    end
    end
end
DDDv=DDv';
mv=setdiff(sm1,DDDv,'rows');



% for b=1:runC
%     for a=1:runD
%     if abs(Dv(b)-sm1(a))<=window
%         mv=[]
% %         dv(countv)=vop(b);
% %         countm=countm+1;
%     end
%     end
% end


disp('Detected vops from algo')
disp(vop);
disp('from data_base vops');
disp(sm);
disp('detected Vops matrix');
Dv=dv';
[ii jj]=size(dv);
disp(Dv);
disp('Missed');
disp(mv);
sv=setdiff(vop,Dv,'rows');

disp('Spu');

disp(sv);

 

disp('Summary');
disp('=======');
disp(' ');
str=sprintf('Total detected vowels =%d',jj);
disp(str);
RV=size(sm);
RV=RV(1,1);
disp(' ');
str=sprintf('Total vowels according to TIMIT=%d',RV);
disp(str);
[ab,ac]=size(vop);
[Da,Db]=size(Dv);
ac=jj/ab;
ac=ac*100;
%str=sprintf('Accu =%d');
disp('Accuracy=')
%disp(str);
disp(ac);
%clear all;
%end
