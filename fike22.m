addpath('C:\Users\sOfT\Documents\ECE Project\project\NIRUPOM SIR\DR1(1)\DR1\FCJF0');
fid=fopen('SA1.PHN');
mc=textscan(fid,'%f %f %s');

%patterns

% p4_a='a';

% p4_e='e';

% p4_i='i';

% p4_o='o';

% p4_u='u';

%strfind(mc{3}(2), 's')

sm=[];

k=[];
sm1=[];

count=0;

sz=size(mc{3});

run_point=sz(1,1);

%k(run_point)=0;



for m=1:run_point

    

v_iy=strfind(mc{3}(m), 'iy');
tf_iy = any(vertcat(v_iy{:}));

v_ih=strfind(mc{3}(m), 'ih');
tf_ih = any(vertcat(v_ih{:}));

v_eh=strfind(mc{3}(m), 'eh');
tf_eh = any(vertcat(v_eh{:}));

v_ey=strfind(mc{3}(m), 'ey');
tf_ey = any(vertcat(v_ey{:}));


v_ae=strfind(mc{3}(m), 'ae');
tf_ae = any(vertcat(v_ae{:}));


v_aa=strfind(mc{3}(m), 'aa');
tf_aa = any(vertcat(v_aa{:}));

v_aw=strfind(mc{3}(m), 'aw');
tf_aw = any(vertcat(v_aw{:}));


v_ay=strfind(mc{3}(m), 'ay');
tf_ay = any(vertcat(v_ay{:}));


v_ah=strfind(mc{3}(m), 'ah');
tf_ah = any(vertcat(v_ah{:}));

v_ao=strfind(mc{3}(m), 'ao');
tf_ao = any(vertcat(v_ao{:}));

v_oy=strfind(mc{3}(m), 'oy');
tf_oy = any(vertcat(v_oy{:}));

v_ow=strfind(mc{3}(m), 'ow');
tf_ow = any(vertcat(v_ow{:}));

v_uh=strfind(mc{3}(m), 'uh');
tf_uh = any(vertcat(v_uh{:}));

v_uw=strfind(mc{3}(m), 'uw');
tf_uw = any(vertcat(v_uw{:}));

v_ux=strfind(mc{3}(m), 'ux');
tf_ux = any(vertcat(v_ux{:}));

v_er=strfind(mc{3}(m), 'er');
tf_er = any(vertcat(v_er{:}));

v_ax=strfind(mc{3}(m), 'ax');
tf_ax = any(vertcat(v_ax{:}));

v_ix=strfind(mc{3}(m), 'ix');
tf_ix = any(vertcat(v_ix{:}));


v_axr=strfind(mc{3}(m), 'axr');
tf_axr = any(vertcat(v_axr{:}));


v_z=strfind(mc{3}(m), 'ax-h');
tf_z = any(vertcat(v_z{:}));
    

    k(m)=tf_iy+tf_ih+tf_eh+tf_ey+tf_ae+tf_aa+tf_aw+tf_ay+tf_ah+tf_ao+tf_oy+tf_ow+tf_uh+tf_uw+tf_ux+tf_er+tf_ax+tf_ix+tf_axr+tf_z;
    disp(k(m));

    if k(m)>=1

        count=count+1;
        sm1(count)=mc{1}(m);
        sm(count,1)=mc{1}(m);

        sm(count,2)=mc{2}(m);

        disp(mc{1}(m));

       disp(mc{2}(m));

    end

    

end


disp(count);
disp(count);

%====================file2================

