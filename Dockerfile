FROM dynverse/dynwrap:r

LABEL version 0.1.1

RUN apt-get install -y libgsl-dev

RUN R -e 'devtools::install_git("https://git.embl.de/velten/STEMNET/")'

ADD . /code

ENTRYPOINT Rscript /code/run.R
