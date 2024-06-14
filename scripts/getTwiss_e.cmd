
 ms1:marker;
 mid2:marker;
 
 em := 0.28E-06;
 kk := 0.003;
 k := kk/(1+kk);
 ex := em/(1+kk);              // when em is the equilibrium emittance
 ey := k*em;
// ey := em/2.;                // ful coupling

//wholeip1:LINE=(SIDDARTAshort,PS1,ms1,PS2,finudashort,IP2,
//                                         finudalong,pl2,mid2,pl1,siddartalong,IP1);
// use, period=wholeip1;
 
 rfcav: rfcavity,l=lcav/2, freq = 368.667, volt=0.13,lag=0.49, NO_CAVITY_TOTALPATH = false,harmon=120;
 BEAM,particle=electron,energy=0.51,npart = 2.E+10, kbunch = 1, Ex = em, Ey = ey, Et = 6.0E-6,sige = 0.0004, sigt = 0.016,radiate= true;

 whole:LINE=(mid2,el1,siddartalong,IP1,SIDDARTAshort,ES1,ms1,ES2,finudashort,IP2,finudalong,el2);

 use, period=whole;

/*
 Ex          2.8000000000000002E-007
 Ey          2.1000000000000002E-009   // k = 0.0075
 Et          1.5999999999999999E-005
 sigt        1.8547511829908471E-002
 sige        8.6264940261148533E-004
 parnum      20750000000.000000    
 circ        97.588663554000135    
 currnt      1.0212907245341582E-002
 betas      0.99999949803923793    
 beta       0.99999949803923793    
 clight      299792458.00000000    
 arad        2.8179403229400413E-015
 alfa        1.8645899488398922E-002
 freq0       3.0719993142447422    
 kbunch            107
 deltap      0.0000000000000000    
*/

!save, sequence=wholekf, file='DAFNE.seq';
!call, FILE= "DAFNE.seq";



 ym := (table(twiss,y)*100000); !mm
 xm := (table(twiss,x)*100000);  ! mm
select, flag=twiss, clear;
! select, flag=twiss, column=name, s,angle,K1l,k2l,betx,bety,mux,muy;
// select, flag=twiss, column=name, s,betx,bety,xm,ym;
!select, flag=twiss, column=name,s,betx,bety,dx,dy,DDX,DDY;
// select, flag=twiss, column=name, s,betx,bety,dx,dy,DDX,DDY,alfx,alfy,mux,muy;  // for Mad-X interface
 select, flag=twiss, column={NAME, S, BETX, BETY, ALFX, ALFY, DX, DPX, X, PX, Y, PY, MUX, MUY, L};
// select, flag=twiss, column=name, s,betx,bety,dx,dy;                              // to compute average betas
//twiss,chrom,betx =9.67893, bety = 1.36743, dx = -1.31607, file=e.dat,save;

twiss,chrom= true,table,file="ele.dat",save;
//save, sequence= whole, file='e_whole_seq';
!twiss,chrom,file=daphneClosed;

/// TOUSCHEK, TOLERANCE= 1E-08, FILE='ele_Touschek';
// WRITE, TABLE=touschek, FILE='ele_Touschek';

//survey, x0:=0, z0:=0.,theta0:=0;
// emit;


//return;

/*
 computes the average betas at the electromagnetic quadrupoles 
 The average betas for each quad are stored in the betaModelAve.dat file
 It works if the column sequence is 'column=name, s, betx, bety + 2 other variables
 a causa del dimensionamento della variabili nel programma betaAtQUADs.f 
 questa procedura va usata con il file qua_siddarta_19_10.d che divide i QUADs in 10 slices
 e con ring_siddharta2_Chalf_19_10slice.d
 il file di uscita contiene:
 rrefname(j),zc(j),betxm(j),betym(j),betxc(j),betyc(j),betxcdbetxm(j), betycdbetym(j)

 
! system "grep QUA ele.dat | grep -v SEPT | grep -v QUAI2001 | grep -v QUAI2007 > betaQUA.dat";  // to be used with QUAI2007 and QUAI2001 off
! system "./betaAtQUADs1";
*/

RETURN;

