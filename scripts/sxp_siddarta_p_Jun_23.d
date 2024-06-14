! Large Sestupole Calibration Constants 
lsl:=0.15;
lss:=0.10;
nl := lsl*en;
ns := lss*en;

! Large Sestupole Calibration Constants [m**-3] I < 150 A
csx1 := 51.177;
csx2 := 49.34;

! Large Sestupole Calibration Constants   150 A < I < 250 A
ccw0 = 11.5;
ccw1 = -0.053007;
ccw2 = 1.4809E-03;
ccw3 = -3.2758E-06;

! Short Sestupole Calibration Constants [m**-3]
cssx1:=19.74;
cssx2:=32.8;


! Sextupole  k**2 [m**-3] as a function of the energy [MeV] and
! power supply current [A]

if (cspl100==0) {signSXTKL100=0;} else{signSXTKL100=cspl100/ABS(cspl100);}
SXTKL100 := (signSXTKL100)*(cssx1*ABS(cspl100)+cssx2)/ns;

if (cspl101==0) {signSXTKL101 =0;} else{signSXTKL101 =cspl101/ABS(cspl101);}
SXTKL101 := (signSXTKL101)*(cssx1*ABS(cspl101)+cssx2)/ns;

if (cspl102==0) {signSXTKL102 =0;} else{signSXTKL102 =cspl102/ABS(cspl102);}
SXTKL102 := (signSXTKL102)*(csx1*ABS(cspl102)+csx2)/nl;

if (cspl103==0) {signSXTKL103 =0;} else{signSXTKL103 =cspl103/ABS(cspl103);}
SXTKL103 := (signSXTKL103)*(csx1*ABS(cspl103)+csx2)/nl;

if (cspl104==0) {signSXTKL104 =0;} else{signSXTKL104 =cspl104/ABS(cspl104);}
SXTKL104 := (signSXTKL104)*(ccw0+ccw1*ABS(cspl104)+ccw2*
            ABS(cspl104)*ABS(cspl104)+ccw3*ABS(cspl104)*
            ABS(cspl104)*ABS(cspl104))/(br0*lsl);


if (csps101==0) {signSXTKS101 =0;} else{signSXTKS101 =csps101/ABS(csps101);}
SXTKS101 := (signSXTKS101)*(ccw0+ccw1*ABS(csps101)+ccw2*
            ABS(csps101)*ABS(csps101)+ccw3*ABS(csps101)*
            ABS(csps101)*ABS(csps101))/(br0*lsl);

if (csps102==0) {signSXTKS102 =0;} else{signSXTKS102 =csps102/ABS(csps102);}
SXTKS102 := (signSXTKS102)*(csx1*ABS(csps102)+csx2)/nl;

if (csps103==0) {signSXTKS103 =0;} else{signSXTKS103 =csps103/ABS(csps103);}
SXTKS103 := (signSXTKS103)*(csx1*ABS(csps103)+csx2)/nl;

if (csps104==0) {signSXTKS104 =0;} else{signSXTKS104 =csps104/ABS(csps104);}
SXTKS104 := (signSXTKS104)*(cssx1*ABS(csps104)+cssx2)/ns;

if (csps201==0) {signSXTKS201 =0;} else{signSXTKS201 =csps201/ABS(csps201);}
SXTKS201 := (signSXTKS201)*(cssx1*ABS(csps201)+cssx2)/ns;

if (csps202==0) {signSXTKS202 =0;} else{signSXTKS202 =csps202/ABS(csps202);}
SXTKS202 := (signSXTKS202)*(csx1*ABS(csps202)+csx2)/nl;

if (csps203==0) {signSXTKS203 =0;} else{signSXTKS203 =csps203/ABS(csps203);}
SXTKS203 := (signSXTKS203)*(csx1*ABS(csps203)+csx2)/nl;

if (csps204==0) {signSXTKS204 =0;} else{signSXTKS204 =csps204/ABS(csps204);}
SXTKS204 := (signSXTKS204)*(cssx1*ABS(csps204)+cssx2)/ns;

if (cspl201==0) {signSXTKL201 =0;} else{signSXTKL201 =cspl201/ABS(cspl201);}
SXTKL201 := (signSXTKL201)*(cssx1*ABS(cspl201)+cssx2)/ns;


if (cspl202==0) {signSXTKL202 =0;} else{signSXTKL202 =cspl202/ABS(cspl202);}
SXTKL202 := (signSXTKL202)*(csx1*ABS(cspl202)+csx2)/nl;


if (cspl203==0) {signSXTKL203 =0;} else{signSXTKL203 =cspl203/ABS(cspl203);}
SXTKL203 := (signSXTKL203)*(csx1*ABS(cspl203)+csx2)/nl;

if (cspl204==0) {signSXTKL204 =0;} else{signSXTKL204 =cspl204/ABS(cspl204);}
SXTKL204 := (signSXTKL204)*(cssx1*ABS(cspl204)+cssx2)/ns;


/*
SXTKL100:= 0.0;
SXTKL101:=  0.0;
SXTKL102:=  0.0;
SXTKL103:=  0.0;
SXTKL104:=  0.0;
SXTKS101:=  0.0;
SXTKS102:=  0.0;
SXTKS103:=  0.0;
SXTKS104:=  0.0;
SXTKS201:=  0.0;
SXTKS202:=  0.0;
SXTKS203:=  0.0;
SXTKS204:=  0.0;
SXTKL201:=  0.0;
SXTKL202:=  0.0;
SXTKL203:=  0.0;
SXTKL204:=  0.0;
*/

SXPPL100:SEXTUPOLE, L:=lss/2, K2:=SXTKL100;
SXPPL101:SEXTUPOLE, L:=lss/2, K2:=SXTKL101;
SXPPL102:SEXTUPOLE, L:=lsl/2, K2:=SXTKL102;
SXPPL103:SEXTUPOLE, L:=lsl/2, K2:=SXTKL103;

SXPPL104:SEXTUPOLE, L:=lsl/2, K2:=SXTKL104; // Crab-Waist sextupole
SXPPS101:SEXTUPOLE, L:=lsl/2, K2:=SXTKS101; // Crab-Waist sextupole

SXPPS102:SEXTUPOLE, L:=lsl/2, K2:=SXTKS102;
SXPPS103:SEXTUPOLE, L:=lsl/2, K2:=SXTKS103;
SXPPS104:SEXTUPOLE, L:=lss/2, K2:=SXTKS104;
SXPPS201:SEXTUPOLE, L:=lss/2, K2:=SXTKS201;
SXPPS202:SEXTUPOLE, L:=lsl/2, K2:=SXTKS202;
SXPPS203:SEXTUPOLE, L:=lsl/2, K2:=SXTKS203;
SXPPS204:SEXTUPOLE, L:=lss/2, K2:=SXTKS204;
SXPPL201:SEXTUPOLE, L:=lss/2, K2:=SXTKL201;
SXPPL202:SEXTUPOLE, L:=lsl/2, K2:=SXTKL202;
SXPPL203:SEXTUPOLE, L:=lsl/2, K2:=SXTKL203;
SXPPL204:SEXTUPOLE, L:=lss/2, K2:=SXTKL204;

// Octupoles

KOCTPS101:=8.388*IOCTPS101;
KOCTPL201:=8.388*IOCTPL201;
KOCTPL101:=8.388*IOCTPL101;

OCTPS101:MULTIPOLE, knl:={0,0,0,KOCTPS101};
OCTPL201:MULTIPOLE, knl:={0,0,0,KOCTPL201};
OCTPL101:MULTIPOLE, knl:={0,0,0,KOCTPL101};

// Multipoles in QUADs

sks104=0.0;
sks105=0.0;
sks205=0.0;
sks206=0.0;
skl204=0.0;
skl205=0.0;
skl106=0.0;
skl107=0.0;

multips104:MULTIPOLE, knl:={0,0,sks104};
multips105:MULTIPOLE, knl:={0,0,sks105};
multips205:MULTIPOLE, knl:={0,0,sks205};
multips206:MULTIPOLE, knl:={0,0,sks206};
multipl204:MULTIPOLE, knl:={0,0,skl204};
multipl205:MULTIPOLE, knl:={0,0,skl205};
multipl106:MULTIPOLE, knl:={0,0,skl106};
multipl107:MULTIPOLE, knl:={0,0,skl107};
