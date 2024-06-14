
 ms1:marker;
 mid2:marker;

 whole:LINE=(mid2,el1,siddartalong,IP1,SIDDARTAshort,ES1,ms1,ES2,finudashort,IP2,finudalong,el2);

 rfcav: rfcavity,l=lcav/2,volt=0.130,lag=0.49,harmon=120;
 BEAM,particle=electron,energy=0.51,charge := 2.E+10,radiate;

 use, period=whole;


 ptc_create_universe;
 ptc_create_layout,time=true,model=2,method=6,nst=10;        //,exact  prevent correct chr computation
 //ptc_align;
 ptc_setswitch, radiation;

 !select,flag=ptc_twiss,column=name,s,beta11,beta21,beta12,beta22,disp1,disp3,x,px,y,py;
 !select,flag=ptc_twiss,column=name,s,beta11,beta22,disp1,disp3,mu1,mu2,mu3;
 !select,flag=ptc_twiss,column=name,s,beta11,beta22,beta33,mu1,mu2,mu3;

 select,flag=ptc_twiss,clear;
 select,flag=ptc_twiss,column=name,s,x,px,beta11,beta22,
              disp1,disp1p,beta11p,beta22p,disp1p;

 ptc_twiss,icase=56,no=4,deltap_dependency, center_magnets, file="ptc_testchr",summary_table;
// ptc_twiss,icase=5,no=3,deltap_dependency,file=ptc_testchr;
 ptc_end;

 !ptc_twiss,closed_orbit,icase=6,file=twiss_ptc_ring,no=1;

 ptc_end;

 RETURN;
! ptc twiss
ptc_create_universe;
ptc_create_layout,time=false,model=2,method=6,nst=10;
!ptc_create_layout,model=2,method=6,exact;
select, flag=ptc_twiss, clear;
select, flag=ptc_twiss, column=name,s,l,beta11,beta22,disp1,disp1p;
ptc_twiss,icase=56, no=4, file="ptctwiss.tfs",summary_table;
ptc_end;
