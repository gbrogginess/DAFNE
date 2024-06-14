// Command file for dinamic aperture of DAFNE for SIDDHARTA-2 run

option, -echo, -warn, -info;

// =====
// INTERFACE
// =====

// beam energy
BEAM_E0   := 0.510; 
Delta_Ene := 0.01; // Delta_Ene = sigma_Ene/Beam_ene
nsige     := 0;    // could be positive and negative

// sigma's and step width
sxmax   := 30;
sxpmax  := 20;
symax   := 200;
sypmax  := 20.;
deltasy := 20.;
deltasx := 10.;


 ms1:marker;
 mid2:marker;
 wholeip1:LINE=(SIDDARTAshort,PS1,ms1,PS2,finudashort,IP2,
                                         finudalong,pl2,mid2,pl1,siddartalong,IP1);
 
emitx := 0.28E-06;
// emity := emitx/2.;
k = .003/(1+.003); // correlation?
emity :=  emitx*k;
dsige := 1.E-04;
dsigt := 0.016;

BEAM_ENE := BEAM_E0*(1 + nsige*Delta_ene); // current beam energy 


BEAM,particle=positron,energy:= BEAM_ENE,radiate=false; // no rad for linear optics
rfcav: rfcavity,l=lcav/2,volt=0.2,lag=0.49,harmon=120;

use, period= wholeIP1;


// define and edit the corresponding sequence in order to speed-up tracking
save,sequence=wholeIP1,file=pdafne_all.seq;
call, file=pdafne_all.seq;

seqedit, sequence=wholeIP1;
select, class=monitor;
select, class=kicker;
select, class=marker;
remove, element=selected;
install, element=IP1;
endedit;
use, period= wholeIP1;

select, flag=twiss, clear;
select, flag=twiss, column=s,betx,bety,dx,dy;
title,'DAFNE(p)';
twiss,sequence= wholeIP1,centre,file="test.tls";
plot,haxis=s,hmin=0.,hmax=100.0,spline,vaxis1=betx,bety,colour=100;

savebeta, label = atIP1, place = IP1;
select, flag=twiss, clear;
select, flag=twiss, column=name,s,betx,bety,dx,dy,DDX, DDY;
twiss, chrom,file=twissSXTon_DA.dat,save;

BEAM,particle=positron,energy:= BEAM_ENE,radiate=true; // restore radiation

sigx   := SQRT(emitx*atIP1->betx);
sigxp  := SQRT(emitx/atIP1->betx);
sigy   := SQRT(emity*atIP1->bety);
sigyp  := SQRT(emity/atIP1->bety);

//value, sigx,sigy;
//return;

// =====
// macro definition
// =====
trackptc(EEEEE):macro = { 
  ptc_track,icase=6,closed_orbit,dump,
  turns=1000 ,ffile=1, ELEMENT_BY_ELEMENT,radiation=true,
  radiation_model1=true, radiation_energy_loss=true, onetable=true,
  file=tracking_xy_EEEEE.out;
//  system,"grep -v % tracking_xy_EEEEE.out | grep -v \* | grep -v \#  > tracking_xy_EEEEE.dat";
};

ptc_create_universe;
ptc_create_layout,model=2,method=6,nst=10,exact;
ptc_align;


nsx = 0;
while ( nsx <= sxmax ) {
  nsy = 0;
  while ( nsy <= symax ) {
    sigxx = nsx * sigx;
    sigyy = nsy * sigy;
    ptc_start, x=sigxx, px=0., y=sigyy, py=0.;
    nsy = nsy + deltasy;
  };
  nsx = nsx + deltasx;
 };


temp := BEAM_ENE*10000;
exec , trackptc($temp);

ptc_track_end;
ptc_end;

return;
