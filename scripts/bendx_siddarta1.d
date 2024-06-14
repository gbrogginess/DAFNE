
!Dipoles of short arc cell

! nominal values of Fint's and beta's
! Betas computed December 07
// betass = 0.0480;
// betasl =-0.0165;
// betaps =-0.0275;
// betapl =-0.0370;

 fin1:=0.03969;
 fin2:=0.04317;
 fin3:=0.04073;
 fin4:=0.04656;
 
finol1:=fin1/(2*0.0375);
finol2:=fin2/(2*0.0375);
finol3:=fin3/(2*0.0375);
finol4:=fin4/(2*0.0375);

!Dipoles of short arc cell
!small angle = 40.5 degree  (DHSPS102,DHSPS201)
!small angle = 44.89 degree (DHSPS101,DHSPS202)

angps:=0.78343467-0.00025; //0.78343786  //+ 0.00032
angpp:=0.706858347;
LBB:=0.989997526;
LBBs:=0.99475677-0.000129; //0.99476082  //+ 0.0015

! vecchi valori
angps:=0.78343786;
angpp:=0.706858347;
LBB:=0.989997526;
LBBs:=0.99476082;

!  sector short
BS1A:SBEND, L:=LBBs/2, ANGLE:=angps/2, e1:=betass, hgap:=.0375, fint:=finol1, fintx:=0;
BS1B:SBEND, L:=LBBs/2, ANGLE:=angps/2, e2:=betass, hgap:=.0375, fint:=0, fintx:=finol1;

!  parallel short
BS2A:SBEND, L:=LBB/2, ANGLE:=angpp/2, e1:=angpp/2+betaps, hgap:=.0375, fint:=finol2, fintx:=0;
BS2B:SBEND, L:=LBB/2, ANGLE:=angpp/2, e2:=angpp/2+betaps, hgap:=.0375, fint:=0, fintx:=finol2;

!Dipoles of cell for long arc     

!large angle := 49.5 gradi  (DHSPL101, DHSPL202)
!large angle := 45.11 gradi (DHSPL102, DHSPL201)

anggs:=0.78735681;
anggp:=0.86393786; //0.86393798
LLBB:=1.20999681; //1.21
LLBBs:=1.20356228;

! vecchi valori
anggs:=0.78735861;
anggp:=0.86393786; //0.86393798
LLBB:=1.20999681; //1.21
LLBBs:=1.20356303;

! sector long
BL1A:SBEND, L:=LLBBs/2, ANGLE:=anggs/2, e1:=betasl, hgap:=.0375, fint:=finol3, fintx:=0;
BL1B:SBEND, L:=LLBBs/2, ANGLE:=anggs/2, e2:=betasl, hgap:=.0375, fint:=0, fintx:=finol3;

! parallel long
BL2A:SBEND, L:=LLBB/2, ANGLE:=anggp/2, e1:=anggp/2+betapl, hgap:=.0375, fint:=finol4, fintx:=0;
BL2B:SBEND, L:=LLBB/2, ANGLE:=anggp/2, e2:=anggp/2+betapl, hgap:=.0375, fint:=0, fintx:=finol4;


 value, anggp;
 value, betapl;
 value, angpp;
 value, angpp;
 value, betaps;
 value, betass;
 value, betasl;
 value, betaps;
 value, betapl;

return;
