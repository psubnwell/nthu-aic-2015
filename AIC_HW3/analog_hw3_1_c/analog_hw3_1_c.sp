**analog_hw3_1_c**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post dccap=1 acout=0 acct
.param vcm=0.9 vdif=0

*circuit*
m1 2 1 0 0 n_18 w=50u l=20u
m2 5 3 2 0 n_18 w=8u l=2u
m3 6 4 2 0 n_18 w=8u l=2u
r1 7 5 200k
r2 7 6 200k
vdd 7 0 1.8
vb 1 0 0.4
vdifp 3 8 'vdif/2'
vdifn 8 4 'vdif/2'
vcm0 8 0 'vcm' ac=1

*analysis*
.ac dec 5 1 10t
.probe ac v(5)
.end