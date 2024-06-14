//
// adapted from ir1_siddarta_bendMoved1.d on Spt 2019
//
kang_qd0:=45.99480e-3;
kang_qf1:=0.0;
 
dhk_qd0s:multipole, knl:={kang_qd0};
dhk_qd0l:multipole, knl:={-kang_qd0};
dhk_qf1s:multipole, knl:={kang_qf1};
dhk_qf1l:multipole, knl:={-kang_qf1};

d0: drift,l=0.2352;
//dd23:=0.026; //0.032  Moved 26_1_08
d1:drift, l:=0.294-0.2352;
dir2:drift, l:=lir2-dd12+dd23;
dir3:drift, l:=lir3-dd23;
dir3s:drift,l:=lir3s -dd23;
dir5:drift, l:=lir5;
dir4:drift, l:=lir4;
dir4s:drift,l:=lir4s;
dqd02:drift, l:=0.02;
dqd02_hk1:drift, l:=0.02-0.004230; //0.005341
dqd02_hk2:drift, l:=0.02+0.004230; //0.005341
dqd03:drift, l:=0.01;
dqf12:drift, l:=0.02;
dqf13:drift, l:=0.01;
dqf12_1:drift,l:=0.02-0.00745;   
dqf12_2: drift,l:=0.00745;

LQD0:=0.23;
LQF1:=0.24;
LIR2:=0.152925+0.073 + 0.00153;
LIR3:=0.23543523-0.003-0.00153 + 0.0095491;
LIR3s:=0.23090523 + 0.44081;
LIR4:=0.4637015 - 0.0095491;
LIR4s:=0.4637015 - 0.44081;
LIR5:=0.55678 - 0.0595335 + 0.047;

pc1:marker;

kqd1:=kqd0;
kqd2:=kqd0;
kQFl:=kQF1;
kQFs:=kQF1;

LQD0:=0.23;
LQF1:=0.24;

PMQDI101:quadrupole, l:=lqd0/2, k1:=kQD1;
PMQDI102:quadrupole, l:=lqd0/2, k1:=kQD2;
PMQFPL01:quadrupole, l:=lqf1/2, k1:=kQFl;
PMQFPS01:quadrupole, l:=lqf1/2, k1:=kQFs;

 value, lqd0;
 value, lqf1;
 value, lir2;
 value, lir3;
 value, lir4;
 value, lir5;
 
midqd0:marker;
midqf1:marker;

cqf1re:=1.0044*qfrfudge; // Qf short normalization to the Aster value 3.020
cqf1le:=1.0044*qflfudge; // Qf long

//kqd0:=-16.5677*qdfudge;  value of the Aster PMQDs
kqd0 := -16.0673*qdfudge;           !   value of the PMQD ESRF 2019 file.par

			  
QD0r:SBEND, L:=0.240, ANGLE:=0.047175, k1:=KQD0, e1:=0, e2:=0;
QD0l:SBEND, L:=0.240, ANGLE:=-0.047175, k1:=KQD0, e1:=0, e2:=0;

qf1r1tilt:=0.0;
qf1re1:multipole, knl:={0,cqf1re*0.000413},tilt:=qf1r1tilt;
qf1re2:multipole, knl:={0,cqf1re*0.001974},tilt:=qf1r1tilt;
qf1re3:multipole, knl:={0,cqf1re*0.012612},tilt:=qf1r1tilt;
qf1re4:multipole, knl:={0,cqf1re*0.067989},tilt:=qf1r1tilt;
qf1re5:multipole, knl:={0,cqf1re*0.126753},tilt:=qf1r1tilt;
qf1re6:multipole, knl:={0,cqf1re*0.139447},tilt:=qf1r1tilt;
qf1re7:multipole, knl:={0,cqf1re*0.143812},tilt:=qf1r1tilt;
qf1re8:multipole, knl:={0,cqf1re*0.145835},tilt:=qf1r1tilt;
qf1re9:multipole, knl:={0,cqf1re*0.148106},tilt:=qf1r1tilt;
qf1re10:multipole, knl:={0,cqf1re*0.152424},tilt:=qf1r1tilt;
qf1re11:multipole, knl:={0,cqf1re*0.158200},tilt:=qf1r1tilt;
qf1re12:multipole, knl:={0,cqf1re*0.158471},tilt:=qf1r1tilt;
qf1re13:multipole, knl:={0,cqf1re*0.154506},tilt:=qf1r1tilt;
qf1re14:multipole, knl:={0,cqf1re*0.145894},tilt:=qf1r1tilt;
qf1re15:multipole, knl:={0,cqf1re*0.129588},tilt:=qf1r1tilt;
qf1re16:multipole, knl:={0,cqf1re*0.073448},tilt:=qf1r1tilt;
qf1re17:multipole, knl:={0,cqf1re*0.014374},tilt:=qf1r1tilt;
qf1re18:multipole, knl:={0,cqf1re*0.002270},tilt:=qf1r1tilt;
qf1re19:multipole, knl:={0,cqf1re*0.000485},tilt:=qf1r1tilt;
qf1le19:multipole, knl:={0,cqf1le*0.000413},tilt:=qf1r1tilt;
qf1le18:multipole, knl:={0,cqf1le*0.001974},tilt:=qf1r1tilt;
qf1le17:multipole, knl:={0,cqf1le*0.012612},tilt:=qf1r1tilt;
qf1le16:multipole, knl:={0,cqf1le*0.067989},tilt:=qf1r1tilt;
qf1le15:multipole, knl:={0,cqf1le*0.126753},tilt:=qf1r1tilt;
qf1le14:multipole, knl:={0,cqf1le*0.139447},tilt:=qf1r1tilt;
qf1le13:multipole, knl:={0,cqf1le*0.143812},tilt:=qf1r1tilt;
qf1le12:multipole, knl:={0,cqf1le*0.145835},tilt:=qf1r1tilt;
qf1le11:multipole, knl:={0,cqf1le*0.148106},tilt:=qf1r1tilt;
qf1le10:multipole, knl:={0,cqf1le*0.152424},tilt:=qf1r1tilt;
qf1le9:multipole, knl:={0,cqf1le*0.158200},tilt:=qf1r1tilt;
qf1le8:multipole, knl:={0,cqf1le*0.158471},tilt:=qf1r1tilt;
qf1le7:multipole, knl:={0,cqf1le*0.154506},tilt:=qf1r1tilt;
qf1le6:multipole, knl:={0,cqf1le*0.145894},tilt:=qf1r1tilt;
qf1le5:multipole, knl:={0,cqf1le*0.129588},tilt:=qf1r1tilt;
qf1le4:multipole, knl:={0,cqf1le*0.073448},tilt:=qf1r1tilt;
qf1le3:multipole, knl:={0,cqf1le*0.014374},tilt:=qf1r1tilt;
qf1le2:multipole, knl:={0,cqf1le*0.002270},tilt:=qf1r1tilt;
qf1le1:multipole, knl:={0,cqf1le*0.000485},tilt:=qf1r1tilt;

lQF1re:line=(dqf13,qf1re1,
                          dqf12,qf1re2,dqf12,qf1re3,dqf12,qf1re4,dqf12,qf1re5,
                          dqf12,qf1re6,dqf12,qf1re7,dqf12,qf1re8,dqf12,qf1re9,
                          dqf12,qf1re10,midqf1,dqf12,qf1re11,dqf12,qf1re12,dqf12,
                          qf1re13,dqf12,qf1re14,dqf12,qf1re15,dqf12,qf1re16,dqf12,qf1re17,
                          dqf12,qf1re18,dqf12,qf1re19,dqf13);
lQF1le:line=(dqf13,qf1le1,
                          dqf12,qf1le2,dqf12,qf1le3,dqf12,qf1le4,dqf12,qf1le5,
                          dqf12,qf1le6,dqf12,qf1le7,dqf12,qf1le8,dqf12,qf1le9,
                          dqf12,midqf1,qf1le10,dqf12,qf1le11,dqf12,qf1le12,dqf12,
                          qf1le13,dqf12,qf1le14,dqf12,qf1le15,dqf12,qf1le16,dqf12,qf1le17,
                          dqf12,qf1le18,dqf12_1,BPBEL111,dqf12_2,qf1le19,dqf13);
pc1:marker;
mspl:marker;
mqd:marker;
IP1:marker;

Siddartashort:line=(d0,BPBI1002,d1,QD0r,mqd,dir2,lQF1re,dir3s,BPBES199,dir4s,
                                        CHVPI101,CHVPI101,dir5,mspl);
					
Siddartalong:line=(mspl,dir5,CHVPI102,CHVPI102,dir4,BPBEL110,dir3,lQF1le,
                    dir2,mqd,QD0l,d1,BPBI1001,d0);
					
Siddarta:line=(Siddartalong,IP1,Siddartashort);

return;