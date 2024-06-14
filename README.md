# DAFNE

This repository contains the lattices for the DAFNE electron (e) and positron (p) rings as provided by C. Milardi (INFN-LNF). The lattices are specifically for the DAFNE Siddharta2 run.

## Directory Structure

### Scripts Directory

The `scripts` directory contains all the files provided by C. Milardi. There are two MAD-X scripts:

- `p_siddharta2_Nov_2019.madx`
- `e_siddharta2_Nov_2019.madx`

You can run these scripts with MAD-X as follows:

`madx p_siddharta2_Nov_2019.madx`
`madx e_siddharta2_Nov_2019.madx`

This will generate two MAD-X sequences:

- `DAFNE_p.seq` (positron ring)
- `DAFNE_e.seq` (electron ring)

These sequences are saved in the `sequences` directory.

In the `scripts` directory, there are two additional MAD-X scripts:

- `DAFNE_p.madx`
- `DAFNE_e.madx`

These scripts generate the MAD-X sequences for the DAFNE electron and positron rings with the aperture definitions included. The resulting sequences are saved as:

- `DAFNE_p_withAper.seq`
- `DAFNE_e_withAper.seq`

### Sequences Directory

Within the `sequences` directory, there is a sub-directory named `aperture` that contains the aperture definitions. These definitions were sourced from a GitHub repository by O. Blanco (formerly INFN-LNF): [DAFNE_TF](https://github.com/orblancog/DAFNE_TF).

### Toolkit Directory

The `toolkit` directory contains a Python script that can be run as follows:

`python DAFNE_xtrack_line.py --seq_file={sequence_filename}.seq --ring={e|p}`

where `{e|p}` is `e` for the electron ring and `p` for the positron ring.

This script converts the MAD-X sequence into an xtrack line (.json), which is saved in the `lines` directory. The saved lines are ready for various applications with the Xsuite package.

## Useful Links

- [Xsuite GitHub](https://github.com/xsuite/xsuite)
- [Xsuite Documentation](https://xsuite.readthedocs.io/en/latest/)
- [G. Iadarola et al., Xsuite: an integrated beam physics simulation framework](https://www.jacow.org/ipac2024/pdf/WEPR56.pdf)
- [C. Milardi et al., DAFNE operation strategy for the observation of the kaonic deuterium](https://www.jacow.org/ipac2024/pdf/WEPR17.pdf)

