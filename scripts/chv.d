csqr:=0.210/en;
crctx:=0.186/en;
crcty:=0.173/en;
clmbx:=0.00681/en;
clmby:=0.0161/en;
cox:=0.0649/en;
coy:=0.0435/en;
cskw:=0.0173/en;
 hkps101:=1.;
 hkps102:=1.;
 hkps103:=1.;
 hkps104:=1.;
 hkps105:=1.;
 hkps106:=1.;
 vkps101:=1.;
 vkps102:=1.;
 vkps103:=1.;
 vkps104:=1.;
 vkps105:=1.;
 vkps106:=1.;
 hkps201:=1.;
 hkps202:=1.;
 hkps203:=1.;
 hkps204:=1.;
 hkps205:=1.;
 vkps201:=1.;
 vkps202:=1.;
 vkps203:=1.;
 vkps204:=1.;
 vkps205:=1.;
 hkpl101:=1.;
 hkpl102:=1.;
 hkpl103:=1.;
 hkpl104:=1.;
 hkpl105:=1.;
 hkpl106:=1.;
 vkpl101:=1.;
 vkpl102:=1.;
 vkpl103:=1.;
 vkpl104:=1.;
 vkpl105:=1.;
 vkpl106:=1.;
 hkpl201:=1.;
 hkpl202:=1.;
 hkpl203:=1.;
 hkpl204:=1.;
 hkpl205:=1.;
 hkpl206:=1.;
 vkpl201:=1.;
 vkpl202:=1.;
 vkpl203:=1.;
 vkpl204:=1.;
 vkpl205:=1.;
 vkpl206:=1.;
 hkpi201:=1.;
 hkpi202:=1.;
 hkpi101:=1.;
 hkpi102:=1.;
 vkpi201:=1.;
 vkpi202:=1.;
 vkpi101:=1.;
 vkpi102:=1.;
 hkcpl101:=1.;
 hkcps101:=1.;
 hkcps201:=1.;
 hkcpl201:=1.;
 vkcpl101:=1.;
 vkcps101:=1.;
 vkcps201:=1.;
 vkcpl201:=1.;
                CHVPS101:kicker, hkick:=hkps101*cskw*ihhps101, vkick:=vkps101*cskw*ivvps101;
                CHVPS104:kicker, hkick:=hkps104*cskw*ihhps104, vkick:=vkps104*cskw*ivvps104;
                CHVPS202:kicker, hkick:=hkps202*cskw*ihhps202, vkick:=vkps202*cskw*ivvps202;
                CHVPS205:kicker, hkick:=hkps205*cskw*ihhps205, vkick:=vkps205*cskw*ivvps205;
                CHVPL103:kicker, hkick:=hkpl103*cskw*ihhpl103, vkick:=vkpl103*cskw*ivvpl103;
                CHVPL106:kicker, hkick:=hkpl106*cskw*ihhpl106, vkick:=vkpl106*cskw*ivvpl106;
                CHVPL201:kicker, hkick:=hkpl201*cskw*ihhpl201, vkick:=vkpl201*cskw*ivvpl201;
                CHVPL204:kicker, hkick:=hkpl204*cskw*ihhpl204, vkick:=vkpl204*cskw*ivvpl204;
                CHVPL101:kicker, l:=0.10/2,hkick:=hkpl101*csqr*ihhpl101, vkick:=vkpl101*csqr*ivvpl101;
                CHVPL102:kicker, l:=0.10/2,hkick:=hkpl102*csqr*ihhpl102, vkick:=vkpl102*csqr*ivvpl102;
                CHVPS105:kicker, l:=0.10/2,hkick:=hkps105*csqr*ihhps105, vkick:=vkps105*csqr*ivvps105;
                CHVPS106:kicker, l:=0.10/2,hkick:=hkps106*csqr*ihhps106, vkick:=vkps106*csqr*ivvps106;
                CHVPS201:kicker, l:=0.10/2,hkick:=hkps201*csqr*ihhps201, vkick:=vkps201*csqr*ivvps201;
                CHVPL205:kicker, l:=0.10/2,hkick:=hkpl205*csqr*ihhpl205, vkick:=vkpl205*csqr*ivvpl205;
                CHVPL206:kicker, l:=0.10/2,hkick:=hkpl206*csqr*ihhpl206, vkick:=vkpl206*csqr*ivvpl206;
                          CHVPS102:kicker, l:=0.10/2,hkick:=hkps102*crctx*ihhps102, vkick:=vkps102*crcty*ivvps102;
                          CHVPS103:kicker, l:=0.10/2,hkick:=hkps103*crctx*ihhps103, vkick:=vkps103*crcty*ivvps103;
                          CHVPS203:kicker, l:=0.10/2,hkick:=hkps203*crctx*ihhps203, vkick:=vkps203*crcty*ivvps203;
                          CHVPS204:kicker, l:=0.10/2,hkick:=hkps204*crctx*ihhps204, vkick:=vkps204*crcty*ivvps204;
                          CHVPL104:kicker, l:=0.10/2,hkick:=hkpl104*crctx*ihhpl104, vkick:=vkpl104*crcty*ivvpl104;
                          CHVPL105:kicker, l:=0.10/2,hkick:=hkpl105*crctx*ihhpl105, vkick:=vkpl105*crcty*ivvpl105;
                          CHVPL202:kicker, l:=0.10/2,hkick:=hkpl202*crctx*ihhpl202, vkick:=vkpl202*crcty*ivvpl202;
                          CHVPL203:kicker, l:=0.10/2,hkick:=hkpl203*crctx*ihhpl203, vkick:=vkpl203*crcty*ivvpl203;
llamb:=.155/2.0;
                       CHVPI201:kicker, l:=llamb, hkick:=hkpi201*clmbx*ihhpi201, vkick:=vkpi201*clmby*ivvpi201;
                       CHVPI202:kicker, l:=llamb, hkick:=hkpi202*clmbx*ihhpi202, vkick:=vkpi202*clmby*ivvpi202;
                        CHVPI101:kicker, l:=llamb, hkick:=hkpi101*clmbx*ihhpi101, vkick:=vkpi101*clmby*ivvpi101;
                        CHVPI102:kicker, l:=llamb, hkick:=hkpi102*clmbx*ihhpi102, vkick:=vkpi102*clmby*ivvpi102;
ldhc:=0.328/2.d0;
//dhc:=(0.009822)-0.000581; //0.00942478    // moved in the .par file
kang_DHCPL101:=-dhc; //-0.009501
kang_DHCPL201:=-0.013084;
kang_DHCPS101:=dhc; //0.009501
kang_DHCPS201:=0.013084;
M_DHCPL101:multipole, knl:={kang_DHCPL101};
M_DHCPL201:multipole, knl:={kang_DHCPL201};
M_DHCPS101:multipole, knl:={kang_DHCPS101};
M_DHCPS101:multipole, knl:={kang_DHCPS101};
M_DHCPS101:multipole, knl:={kang_DHCPS101};
M_DHCPS201:multipole, knl:={kang_DHCPS201};
dhc1:=0.000637; //0.001057  //0.002129 //0.012046  //0.012676
         DHCPL101:kicker, l:=ldhc, hkick:=hkcpl101*cox*ihhdpl101, vkick:=vkcpl101*coy*ivvdpl101;
         DCPL101s:kicker, l:=(ldhc -dhc1),hkick:=hkcpl101*cox*ihhdpl101, vkick:=vkcpl101*coy*ivvdpl101;
         DCPL101l:kicker, l:=(ldhc +dhc1),hkick:=hkcpl101*cox*ihhdpl101, vkick:=vkcpl101*coy*ivvdpl101;
         DHCPS101:kicker, l:=ldhc, hkick:=hkcps101*cox*ihhdps101, vkick:=vkcps101*coy*ivvdps101;
         DCPS101s:kicker, l:=(ldhc -dhc1),hkick:=hkcps101*cox*ihhdps101, vkick:=vkcps101*coy*ivvdps101;
         DCPS101l:kicker, l:=(ldhc +dhc1),hkick:=hkcps101*cox*ihhdps101, vkick:=vkcps101*coy*ivvdps101;
dch:=0.0; //0.008676
         DHCPS201:kicker, l:=ldhc, hkick:=hkcps201*cox*ihhdps201, vkick:=vkcps201*coy*ivvdps201;
         DCPS201s:kicker, l:=(ldhc + dch),hkick:=hkcps201*cox*ihhdps201, vkick:=vkcps201*coy*ivvdps201;
         DCPS201l:kicker, l:=(ldhc - dch),hkick:=hkcps201*cox*ihhdps201, vkick:=vkcps201*coy*ivvdps201;
         DHCPL201:kicker, l:=ldhc, hkick:=hkcpl201*cox*ihhdpl201, vkick:=vkcpl201*coy*ivvdpl201;
         DCPL201s:kicker, l:=(ldhc + dch),hkick:=hkcpl201*cox*ihhdpl201, vkick:=vkcpl201*coy*ivvdpl201;
         DCPL201l:kicker, l:=(ldhc - dch),hkick:=hkcpl201*cox*ihhdpl201, vkick:=vkcpl201*coy*ivvdpl201;
return; //
