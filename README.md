# DAFNE

The repository contains the lattices for the DAFNE electron (e) and positron (p) rings as provided by C. Milardi (INFN-LNF).
The lattices are for the DAFNE Siddharta2 run.

The scripts directory contains all the files provided by C. Milardi. In this directory there are two MAD-X scripts: ''p_siddharta2_Nov_2019.madx'' and ''e_siddharta2_Nov_2019.madx''. It is possible to run these scripts with madx as:

''madx p_siddharta2_Nov_2019.madx''
''madx e_siddharta2_Nov_2019.madx''

This produces two MAD-X sequences ''DAFNE_p.seq'' and ''DAFNE_e.seq'' in the ''sequences'' directory.

In the ''sequences'' directory there is also a sub-directory ''aperture'' containing the aperture definitions. The aperture definitions have been taken from a GitHub repository by O. Blanco (formerly INFN-LNF): https://github.com/orblancog/DAFNE_TF.

In the ''scripts'' directory the are two additional MAD-X scripts named ''DAFNE_p.madx'' and ''DAFNE_e.madx'' which are used to generate the MAD-X sequences for the DAFNE electron and positron rings with the aperture definitions included. These sequences are saved in the ''sequences'' directory as ''DAFNE_p_withAper.seq'' and ''DAFNE_e_withAper.seq''.