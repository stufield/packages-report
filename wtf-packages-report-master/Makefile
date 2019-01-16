
figs/built-barchart.png: data/add-on-packages-freqtable.csv
	Rscript R/03_barchart-packages-built.R

data/add-on-packages-freqtable.csv data/add-on-packages.csv: data/installed-packages.csv
	Rscript R/02_wrangle-packages.R

data/installed-packages.csv:
	Rscript R/01_write-installed-packages.R

clean:
	rm data/*csv figs/*png
