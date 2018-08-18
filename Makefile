all: tfweb
	npm install
tfweb:
	cd tensorflow.js/web; yarn build
install:
	rsync -ar tensorflow.js/web/dist/* ../Arduinojs/page/dl
clean:
	rm -rf node_modules
	rm -rf hadoop
	rm -rf hadoop-2.7.5.tar.gz
	rm -rf kafka
	rm -rf kafka_2.11-1.0.0.tgz
	rm -rf spark
	rm -rf spark-2.2.1-bin-hadoop2.7.tgz
	rm -rf elasticsearch
	rm -rf elasticsearch-6.1.1.tar.gz
format: clean
	find . -name "*.js" -exec js-beautify -r {} \;	 
	find . -name "*.html" -exec html-beautify -r {} \;	 
	find . -name "*.css" -exec css-beautify -r {} \;	 
