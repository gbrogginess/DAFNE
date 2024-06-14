
 ms1:marker;
 mid2:marker;
!wholeip1:LINE=(SIDDARTAshort,PS1,ms1,PS2,finudashort,IP2,
!                                          finudalong,pl2,mid2,pl1,siddartalong,IP1);
 wholp:LINE=(mid2,pl1,siddartalong,IP1,SIDDARTAshort,PS1,ms1,PS2,finudashort,IP2,finudalong,pl2);
! use, period=wholeip1;
 
 rfcav: rfcavity,l=lcav/2,volt=0.1,lag=0.49,harmon=120;
 BEAM,particle=electron,energy=0.51,charge := 2.E+10,radiate= false;

 use, period=wholp;

!save, sequence=wholekf, file='DAFNE.seq';
!call, FILE= "DAFNE.seq";


 ym := (table(twiss,y)*100000); !mm
 xm := (table(twiss,x)*100000);  ! mm
select, flag=twiss, clear;
! select, flag=twiss, column=name, s,angle,K1l,k2l,betx,bety,mux,muy;
// select, flag=twiss, column=name, s,betx,bety,xm,ym;
!select, flag=twiss, column=name,s,betx,bety,dx,dy,DDX,DDY;
 select, flag=twiss, column=name, s,betx,bety,dx,dy,DDX,DDY,alfx,alfy,mux,muy;  // for Mad-X interface
// select, flag=twiss, column=name, s,betx,bety,dx,dy;                              // to compute average betas
//twiss,chrom,betx =9.67893, bety = 1.36743, dx = -1.31607, file=e.dat,save;

twiss,chrom,file="pos.dat",save;
save, sequence= wholp, file='p_whole_seq';

!twiss,chrom,file=daphneClosed;


//survey, x0:=0, z0:=0.,theta0:=0;

return;

! computes the average betas at the electromagnetic quadrupoles 
! The average betas for each quad are stored in the betaModelAve.dat file
! It works if the column sequence is 'column=name, s, betx, bety + 2 other variables
! a causa del dimensionamento della variabili nel programma betaAtQUADs.f 
! questa procedura va usata con il file qua_siddarta_19_10.d che divide i QUADs in 10 slices
! e con ring_siddharta2_Chalf_19_10slice.d
! il file di uscita contiene:
! rrefname(j),zc(j),betxm(j),betym(j),betxc(j),betyc(j),betxcdbetxm(j), betycdbetym(j)

 
! system "grep QUA ele.dat | grep -v SEPT | grep -v QUAI2001 | grep -v QUAI2007 > betaQUA.dat";  // to be used with QUAI2007 and QUAI2001 off
! system "./betaAtQUADs1";


! RETURN;

/*
ptc_create_universe;
ptc_create_layout,model=2,method=6,nst=10,exact;
ptc_align;

!select,flag=ptc_twiss,column=name,s,beta11,beta21,beta12,beta22,disp1,disp3,x,px,y,py;
!select,flag=ptc_twiss,column=name,s,beta11,beta22,disp1,disp3,mu1,mu2,mu3;
!select,flag=ptc_twiss,column=name,s,beta11,beta22,beta33,mu1,mu2,mu3;

select,flag=ptc_twiss,clear;
select,flag=ptc_twiss,column=name,s,x,px,beta11,beta12,beta22,beta21,
              disp1,disp3,beta11p,beta22p,disp1p;

ptc_twiss,icase=5,no=3,deltap_dependency,file=ptc_testchr;
ptc_end;

!ptc_twiss,closed_orbit,icase=6,file=twiss_ptc_ring,no=1;

ptc_end;

*/
! emit;
! save, sequence=wholekf, file='DAFNE';

 RETURN;



!$$$$$$$$$$$$$

/*
 select, flag=error,clear;
 select,flag=error, class=quadrupole,range=QUAPL101[1]/QUAPL101[2];
 select, flag=error, pattern="^QUAPL101.*";
 ealign, dx = 0.0001 , dy = -0.0000 , dtheta = -0.00,dphi = -0.00;
 eprint;

 select, flag=error,clear;
 select,flag=error, class=quadrupole,range=QUAPS107[1]/QUAPS107[2];
 select, flag=error, pattern="^QUAPS107.*";
 ealign, dx = 0.0001 , dy = -0.0000 , dtheta = -0.00,dphi = -0.00;
 eprint;


!*/

 select, flag=error,clear;


 select,flag=error,class= multipole,range=QD0L15/QD0L1;
 select, flag=error, pattern="^qd0l.*";
 ealign, dx = 0.000 , dy = -0.0005, dtheta = -0.00,dphi = -0.00;
 eprint;


 select, flag=error,clear;
 select,flag=error,class= multipole,range=QD0S1/QD0S15;
 select, flag=error, pattern="^qd0s.*";
 ealign, dx = -0.000 , dy = -0.000 , dtheta = -0.00,dphi = -0.00;
 eprint;

!/*
 select,flag=error,class= multipole,range=QF1S1/QF1S20;
 select, flag=error, pattern="^qf1s.*";
 ealign, dx = -0.000 , dy = 0.0005 , dtheta = -0.00,dphi = -0.00;
 eprint;

 select,flag=error,class= quadrupole,range=QUAPS107[1]/QUAPS107[2];
 select, flag=error,pattern="QUAPS107.*" ;
 ealign, dx = -0.001 , dy = 0.00 , dtheta = -0.00,dphi = -0.00;
 eprint;
 select,flag=error,class= quadrupole,range=QUAPS108[1]/QUAPS108[2];
 select, flag=error,pattern="QUAPS108.*" ;
 ealign, dx = -0.00 , dy = -0.001 , dtheta = -0.00,dphi = -0.00;
 eprint;

 select, flag=error,clear;
 select,flag=error,class= quadrupole,range=QUAPS110[1]/QUAPS110[2];
 select, flag=error,pattern="QUAPS110.*" ;
 ealign, dx = 0.00 , dy = 0.1 , dtheta = -0.00,dphi = -0.00;
 eprint;

 select, flag=error,clear;
 select,flag=error,class= quadrupole,range=QUAI20076/QUAI20016;
 select, flag=error,pattern="QUAI200.*" ;
 ealign, dx = 0.00 , dy = -0.001 , dtheta = -0.00,dphi = -0.00;
 eprint;

*/
!$$$$$$$$$$$$$$$
