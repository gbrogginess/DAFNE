"""
Convert DAFNE MAD-X sequence to xtrack line (.json)
--------------------------------------------------------------------------------

Using the (thick) sequence file, this script produces an xtrack line.
The xtrack line is saved in the lines directory.

*--Required--*
- **seq_file** *(str)*: Path to the seq file.
- **ring** *(str)*: Which ring (e or p).

*--Optional--*
- **aperture** *(bool)*: Whether to install the aperture or not.

"""
from pathlib import Path
from cpymad.madx import Madx
import xtrack as xt
import matplotlib.pyplot as plt
from generic_parser import EntryPointParameters, entrypoint


# Script arguments -------------------------------------------------------------
def get_params():
    params = EntryPointParameters()
    params.add_parameter(
        name="seq_file",
        type=str,
        required=True,
        help="Path to the seq file.",
    )
    params.add_parameter(
    name="ring",
    type=str,
    required=True,
    help="Which ring (e or p).",
    )
    params.add_parameter(
    name="aperture",
    type=bool,
    required=False,
    default=True,
    help="Whether to install the aperture or not.",
    )

    return params


# Entrypoint -------------------------------------------------------------------
@entrypoint(get_params(), strict=True)
def main(inp):
    # Read MAD-X sequence from file (using cpymad)
    mad = Madx()
    mad.call(inp.seq_file)
    mad.beam()
    if inp.ring == 'e':
        mad.use('whole')
        # Convert sequence to Xsuite line
        line = xt.Line.from_madx_sequence(mad.sequence.whole, install_apertures=inp.aperture)
        line.to_json('../lines/DAFNE_e.json')
    elif inp.ring == 'p':
        mad.use('wholp')
        # Convert sequence to Xsuite line
        line = xt.Line.from_madx_sequence(mad.sequence.wholp, install_apertures=inp.aperture)
        line.to_json('../lines/DAFNE_p.json')
    else:
        raise ValueError(f"ring must be either 'e' or 'p', not '{inp.ring}'")

    return 


# Script Mode ------------------------------------------------------------------

if __name__ == "__main__":
    main()