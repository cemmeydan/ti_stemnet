FROM dynverse/dynwrap:r

RUN apt-get update && apt-get install -y libgsl-dev

RUN R -e 'devtools::install_git("https://git.embl.de/velten/STEMNET/")'

LABEL version 0.1.5.1

ADD . /code

ENTRYPOINT Rscript /code/run.R
