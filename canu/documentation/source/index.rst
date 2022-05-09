Canu
====

.. toctree::
   :hidden:

   quick-start
   faq
   tutorial
   pipeline
   parameter-reference
   history


`Canu <http://github.com/marbl/canu>`_ is a fork of the `Celera Assembler <http://wgs-assembler.sourceforge.net>`_
designed for high-noise single-molecule sequencing (such as
the PacBio RSII or Oxford Nanopore MinION).

Publications
============

Canu
  Koren S, Walenz BP, Berlin K, Miller JR, Phillippy AM.
  `Canu: scalable and accurate long-read assembly via adaptive k-mer weighting and repeat separation <http://doi.org/10.1101/gr.215087.116>`_. Genome Research. (2017).

TrioCanu
  Koren S, Rhie A, Walenz BP, Dilthey AT, Bickhart DM, Kingan SB, Hiendleder S, Williams JL, Smith TPL, Phillippy AM.
  `De novo assembly of haplotype-resolved genomes with trio binning <http://doi.org/10.1038/nbt.4277>`_. Nature Biotechnology. (2018).

HiCanu
  Nurk S, Walenz BP, Rhiea A, Vollger MR, Logsdon GA, Grothe R, Miga KH, Eichler EE, Phillippy AM, Koren S.
  `HiCanu: accurate assembly of segmental duplications, satellites, and allelic variants from high-fidelity long reads <https://doi.org/10.1101/gr.263566.120>`_. Genome Research. (2020).

Install
=======
The easiest way to get started is to download a `release <https://github.com/marbl/canu/releases>`_. If you encounter
any issues, please report them using the `github issues <http://github.com/marbl/canu/issues>`_ page.

Alternatively, you can also build the latest unreleased from github:

::

  git clone https://github.com/marbl/canu.git
  cd canu/src
  make -j <number of threads>

Learn
=====

*  :ref:`Quick Start               <quickstart>` - no experience or data required, download and assemble *Escherichia coli* today!
*  :ref:`FAQ                       <faq>` - Frequently asked questions
*  :ref:`Canu tutorial             <tutorial>`   - a gentle introduction to the complexities of canu.
*  :ref:`Canu pipeline             <pipeline>`   - what, exactly, is canu doing, anyway?

*  :ref:`Canu Parameter Reference  <parameter-reference>` - all the parameters, grouped by function.
*  :ref:`Canu History              <history>` - the history of the Canu project.
