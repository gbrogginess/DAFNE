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

if (csel100==0) {signSXTKL100=0;} else{signSXTKL100=csel100/ABS(csel100);}
SXTKL100 := (signSXTKL100)*(cssx1*ABS(csel100)+cssx2)/ns;

if (csel101==0) {signSXTKL101 =0;} else{signSXTKL101 =csel101/ABS(csel101);}
SXTKL101 := (signSXTKL101)*(cssx1*ABS(csel101)+cssx2)/ns;

if (csel102==0) {signSXTKL102 =0;} else{signSXTKL102 =csel102/ABS(csel102);}
SXTKL102 := (signSXTKL102)*(csx1*ABS(csel102)+csx2)/nl;

if (csel103==0) {signSXTKL103 =0;} else{signSXTKL103 =csel103/ABS(csel103);}
SXTKL103 := (signSXTKL103)*(csx1*ABS(csel103)+csx2)/nl;

if (csel104==0) {signSXTKL104 =0;} else{signSXTKL104 =csel104/ABS(csel104);}
SXTKL104 := (signSXTKL104)*(ccw0+ccw1*ABS(csel104)+ccw2*
            ABS(csel104)*ABS(csel104)+ccw3*ABS(csel104)*
            ABS(csel104)*ABS(csel104))/(br0*lsl);


if (cses101==0) {signSXTKS101 =0;} else{signSXTKS101 =cses101/ABS(cses101);}
SXTKS101 := (signSXTKS101)*(ccw0+ccw1*ABS(cses101)+ccw2*
            ABS(cses101)*ABS(cses101)+ccw3*ABS(cses101)*
            ABS(cses101)*ABS(cses101))/(br0*lsl);

if (cses102==0) {signSXTKS102 =0;} else{signSXTKS102 =cses102/ABS(cses102);}
SXTKS102 := (signSXTKS102)*(csx1*ABS(cses102)+csx2)/nl;

//if (cses103==0) {signSXTKS103 =0;} else{signSXTKS103 =cses103/ABS(cses103);}
//SXTKS103 := (signSXTKS103)*(csx1*ABS(cses103)+csx2)/nl;
SXTKS103 := 0.;

if (cses104==0) {signSXTKS104 =0;} else{signSXTKS104 =cses104/ABS(cses104);}
SXTKS104 := (signSXTKS104)*(cssx1*ABS(cses104)+cssx2)/ns;

if (cses201==0) {signSXTKS201 =0;} else{signSXTKS201 =cses201/ABS(cses201);}
SXTKS201 := (signSXTKS201)*(cssx1*ABS(cses201)+cssx2)/ns;

if (cses202==0) {signSXTKS202 =0;} else{signSXTKS202 =cses202/ABS(cses202);}
SXTKS202 := (signSXTKS202)*(csx1*ABS(cses202)+csx2)/nl;

if (cses203==0) {signSXTKS203 =0;} else{signSXTKS203 =cses203/ABS(cses203);}
SXTKS203 := (signSXTKS203)*(csx1*ABS(cses203)+csx2)/nl;

if (cses204==0) {signSXTKS204 =0;} else{signSXTKS204 =cses204/ABS(cses204);}
SXTKS204 := (signSXTKS204)*(cssx1*ABS(cses204)+cssx2)/ns;

if (csel201==0) {signSXTKL201 =0;} else{signSXTKL201 =csel201/ABS(csel201);}
SXTKL201 := (signSXTKL201)*(cssx1*ABS(csel201)+cssx2)/ns;


if (csel202==0) {signSXTKL202 =0;} else{signSXTKL202 =csel202/ABS(csel202);}
SXTKL202 := (signSXTKL202)*(csx1*ABS(csel202)+csx2)/nl;


if (csel203==0) {signSXTKL203 =0;} else{signSXTKL203 =csel203/ABS(csel203);}
SXTKL203 := (signSXTKL203)*(csx1*ABS(csel203)+csx2)/nl;

if (csel204==0) {signSXTKL204 =0;} else{signSXTKL204 =csel204/ABS(csel204);}
SXTKL204 := (signSXTKL204)*(cssx1*ABS(csel204)+cssx2)/ns;


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

SXPEL100:SEXTUPOLE, L:=lss/2, K2:=SXTKL100;
SXPEL101:SEXTUPOLE, L:=lss/2, K2:=SXTKL101;
SXPEL102:SEXTUPOLE, L:=lsl/2, K2:=SXTKL102;
SXPEL103:SEXTUPOLE, L:=lsl/2, K2:=SXTKL103;

SXPEL104:SEXTUPOLE, L:=lsl/2, K2:=SXTKL104; // Crab-Waist sextupole
SXPES101:SEXTUPOLE, L:=lsl/2, K2:=SXTKS101; // Crab-Waist sextupole

SXPES102:SEXTUPOLE, L:=lsl/2, K2:=SXTKS102;
SXPES103:SEXTUPOLE, L:=lsl/2, K2:=SXTKS103;
SXPES104:SEXTUPOLE, L:=lss/2, K2:=SXTKS104;
SXPES201:SEXTUPOLE, L:=lss/2, K2:=SXTKS201;
SXPES202:SEXTUPOLE, L:=lsl/2, K2:=SXTKS202;
SXPES203:SEXTUPOLE, L:=lsl/2, K2:=SXTKS203;
SXPES204:SEXTUPOLE, L:=lss/2, K2:=SXTKS204;
SXPEL201:SEXTUPOLE, L:=lss/2, K2:=SXTKL201;
SXPEL202:SEXTUPOLE, L:=lsl/2, K2:=SXTKL202;
SXPEL203:SEXTUPOLE, L:=lsl/2, K2:=SXTKL203;
SXPEL204:SEXTUPOLE, L:=lss/2, K2:=SXTKL204;

// Octupoles

KOCTES101:=8.388*IOCTES101;
KOCTEL201:=8.388*IOCTEL201;
KOCTEL101:=8.388*IOCTEL101;
OCTES101:MULTIPOLE, knl:={0,0,0,KOCTES101};
OCTEL210:MULTIPOLE, knl:={0,0,0,KOCTEL210};
OCTEL101:MULTIPOLE, knl:={0,0,0,KOCTEL101};
OCTEL201:MULTIPOLE, knl:={0,0,0,KOCTEL201};

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
