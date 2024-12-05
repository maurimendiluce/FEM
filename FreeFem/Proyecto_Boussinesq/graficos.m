addpath('ffmatlib');
[p,b,t,nv,nbe,nt,labels]=ffreadmesh('mesh.msh');
[vhseq]=ffreaddata('Vh.txt');
[qhseq]=ffreaddata('Qh.txt');
[u1,u2]=ffreaddata('velocidad.txt');
[C]=ffreaddata('C.txt');

%%Mesh
figure();
ffpdeplot(p,b,t,'Mesh','on','Boundary','on','Title','Mesh');

figure();
ffpdeplot(p,b,t,'VhSeq',qhseq,'XYData',C,'Mesh','on','Boundary','on', ...
          'XLim',[0 1],'YLim',[0 1],'Title','Solución C');
figure();
ffpdeplot(p,b,t,'FlowData',[u1,u2],'VhSeq',vhseq,'FGridParam',[240,240],'Boundary','on','Title','Solución uh');

