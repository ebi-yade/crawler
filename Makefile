PROJECT_NAME=crawler
init:
	git clone https://github.com/ebi-yade/go-crawler src
update:
	cd src && \
	git pull origin master && \
	cd ..
deploy: 
	cd terraform && \
	terraform apply
vagrant-reload:
	cd vagrant && \
	cp Vagrantfile.bak Vagrantfile && \
	sed -i.bak -e "s/VmBoxNameHere/amzn2-$(PROJECT_NAME)/g" Vagrantfile && \
	vagrant reload