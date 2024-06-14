sept_quad:multipole, knl:={0,kseptum};
c1s:=9.1277;
c2s:=4.53;
c1l:=16.963;
c2l:=5.62;
lsq:=0.29; // large
llq:=0.30; // small
lla:=0.38; // large aperture
c1la:=3.9786;
c2la:=2.72;
 kl101:=(cel101/ABS(cel101))*(c1s*(abs(cel101)+eps+del101)+c2s)/en;
 kl102:=(cel102/ABS(cel102))*(c1s*(abs(cel102)+eps+del102)+c2s)/en;
 kl103:=(cel103/ABS(cel103))*(c1la*(abs(cel103)+eps+del103)+c2la)/en;
 kl104:=(cel104/ABS(cel104))*(c1s*(abs(cel104)+eps+del104)+c2s)/en;
 kl114:=(cel114/ABS(cel114))*(c1l*(abs(cel114)+eps+del114)+c2l)/en;
 kl105:=(cel105/ABS(cel105))*(c1l*(abs(cel105)+eps+del105)+c2l)/en;
 kl106:=(cel106/ABS(cel106))*(c1l*(abs(cel106)+eps+del106)+c2l)/en;
 kl107:=(cel107/ABS(cel107))*(c1l*(abs(cel107)+eps+del107)+c2l)/en;
 kl108:=(cel108/ABS(cel108))*(c1s*(abs(cel108)+eps+del108)+c2s)/en;
 kl109:=(cel109/ABS(cel109))*(c1s*(abs(cel109)+eps+del109)+c2s)/en;
 kl110:=(cel110/ABS(cel110))*(c1s*(abs(cel110)+eps+del110)+c2s)/en;
 kl111:=(ci1014/ABS(ci1014))*(c1s*(abs(ci1014)+eps+di1014)+c2s)/en;
 kl201:=(cel201/ABS(cel201))*(c1s*(ABS(cel201)+eps+del201)+c2s)/en;
 kl202:=(cel202/ABS(cel202))*(c1s*(ABS(cel202)+eps+del202)+c2s)/en;
 kl203:=(cel203/ABS(cel203))*(c1s*(ABS(cel203)+eps+del203)+c2s)/en;
 kl204:=(cel204/ABS(cel204))*(c1l*(ABS(cel204)+eps+del204)+c2l)/en;
 kl205:=(cel205/ABS(cel205))*(c1l*(ABS(cel205)+eps+del205)+c2l)/en;
 kl206:=(cel206/ABS(cel206))*(c1l*(ABS(cel206)+eps+del206)+c2l)/en;
 kl207:=(cel207/ABS(cel207))*(c1s*(ABS(cel207)+eps+del207)+c2s)/en;
 kl217:=(cel217/ABS(cel217))*(c1l*(ABS(cel217)+eps+del217)+c2l)/en;
 kl208:=(cel208/ABS(cel208))*(c1la*(ABS(cel208)+eps+del208)+c2la)/en;
 kl209:=(cel209/ABS(cel209))*(c1s*(ABS(cel209)+eps+del209)+c2s)/en;
 kl210:=(cel210/ABS(cel210))*(c1s*(ABS(cel210)+eps+del210)+c2s)/en;
 ks100:=(ci1023/ABS(ci1023))*(c1s*(ABS(ci1023)+eps+di1023)+c2s)/en;
 ks101:=(ces101/ABS(ces101))*(c1s*(ABS(ces101)+eps+des101)+c2s)/en;
 ks102:=(ces102/ABS(ces102))*(c1s*(ABS(ces102)+eps+des102)+c2s)/en;
 ks103:=(ces103/ABS(ces103))*(c1s*(ABS(ces103)+eps+des103)+c2s)/en;
 ks104:=(ces104/ABS(ces104))*(c1l*(ABS(ces104)+eps+des104)+c2l)/en;
 ks105:=(ces105/ABS(ces105))*(c1l*(ABS(ces105)+eps+des105)+c2l)/en;
 ks106:=(ces106/ABS(ces106))*(c1l*(ABS(ces106)+eps+des106)+c2l)/en;
 ks107:=(ces107/ABS(ces107))*(c1s*(ABS(ces107)+eps+des107)+c2s)/en;
 ks108:=(ces108/ABS(ces108))*(c1s*(ABS(ces108)+eps+des108)+c2s)/en;
 ks109:=(ces109/ABS(ces109))*(c1s*(ABS(ces109)+eps+des109)+c2s)/en;
 ks110:=(ces110/ABS(ces110))*(c1s*(ABS(ces110)+eps+des110)+c2s)/en;
 ks201:=(ces201/ABS(ces201))*(c1s*(ABS(ces201)+eps+des201)+c2s)/en;
 ks202:=(ces202/ABS(ces202))*(c1s*(ABS(ces202)+eps+des202)+c2s)/en;
 ks203:=(ces203/ABS(ces203))*(c1s*(ABS(ces203)+eps+des203)+c2s)/en;
 ks204:=(ces204/ABS(ces204))*(c1l*(ABS(ces204)+eps+des204)+c2l)/en;
 ks205:=(ces205/ABS(ces205))*(c1l*(ABS(ces205)+eps+des205)+c2l)/en;
 ks206:=(ces206/ABS(ces206))*(c1l*(ABS(ces206)+eps+des206)+c2l)/en;
 ks207:=(ces207/ABS(ces207))*(c1s*(ABS(ces207)+eps+des207)+c2s)/en;
 ks208:=(ces208/ABS(ces208))*(c1s*(ABS(ces208)+eps+des208)+c2s)/en;
 ks209:=(ces209/ABS(ces209))*(c1s*(ABS(ces209)+eps+des209)+c2s)/en;
 
quael101:quadrupole, L:=llq/2, K1:=kl101;
quael102:quadrupole, L:=llq/2, K1:=kl102;

quael103:quadrupole, L:=lla/2, K1:=kl103;
quael103a: quadrupole, L:= ((lla/2)-0.089), K1 := kl103;
quael103b: quadrupole, L:= 0.089, K1 := kl103;

quael103:quadrupole, L:=(lla/2),k1:=kl103;
quael103:quadrupole, L:=(lla/2),k1:=kl103;
quael104:quadrupole, L:=llq/2, K1:=kl104;
quaeL114:quadrupole, L:=lsq/2, K1:=kl114;
quaeL105:quadrupole, L:=lsq/2, K1:=kl105;
quaeL106:quadrupole, L:=lsq/2, K1:=kl106;
quaeL107:quadrupole, L:=lsq/2, K1:=kl107;
quaeL108:quadrupole, L:=llq/2, K1:=kl108;
quaeL109:quadrupole, L:=llq/2, K1:=kl109;
quaeL110:quadrupole, L:=llq/2, K1:=kl110;
quaeL111:quadrupole, L:=llq/2, K1:=kl111;
quaeL201:quadrupole, L:=llq/2, K1:=kl201;
quaeL202:quadrupole, L:=llq/2, K1:=kl202;
quaeL203:quadrupole, L:=llq/2, K1:=kl203;
quaeL204:quadrupole, L:=lsq/2, K1:=kl204;
quaeL205:quadrupole, L:=lsq/2, K1:=kl205;
quaeL206:quadrupole, L:=lsq/2, K1:=kl206;
quaeL217:quadrupole, L:=lsq/2, K1:=kl217;
quael207:quadrupole, L:=llq/2, K1:=kl207;

quael208: quadrupole,L := lla/2, K1 := kl208;
quael208b:quadrupole,L := 0.089, K1 := kl208;
quael208a:quadrupole,L := ((lla/2)-0.089), K1 := kl208;

quael209:quadrupole, L:=llq/2, K1:=kl209;
quael210:quadrupole, L:=llq/2, K1:=kl210;
quaes100:quadrupole, L:=llq/2, K1:=ks100;
quaes101:quadrupole, L:=llq/2, K1:=ks101;
quaes102:quadrupole, L:=llq/2, K1:=ks102;
quaes103:quadrupole, L:=llq/2, K1:=ks103;
quaes104:quadrupole, L:=lsq/2, K1:=ks104;
quaes105:quadrupole, L:=lsq/2, K1:=ks105;
quaes106:quadrupole, L:=lsq/2, K1:=ks106;
quaes107:quadrupole, L:=llq/2, K1:=ks107;
quaes108:quadrupole, L:=llq/2, K1:=ks108;
quaes109:quadrupole, L:=llq/2, K1:=ks109;
quaes110:quadrupole, L:=llq/2, K1:=ks110;
quaes201:quadrupole, L:=llq/2, K1:=ks201;
quaes202:quadrupole, L:=llq/2, K1:=ks202;
quaes203:quadrupole, L:=llq/2, K1:=ks203;
quaes204:quadrupole, L:=lsq/2, K1:=ks204;
quaes205:quadrupole, L:=lsq/2, K1:=ks205;
quaes206:quadrupole, L:=lsq/2, K1:=ks206;
quaes207:quadrupole, L:=llq/2, K1:=ks207;
quaes208:quadrupole, L:=llq/2, K1:=ks208;
quaes209:quadrupole, L:=llq/2, K1:=ks209;
 value, kl111;
 value, ks100;