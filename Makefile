PROJECT_NAME=crawler
deploy: 
	cd terraform && \
	terraform apply
vagrant-reload:
	cd vagrant && \
	cp Vagrantfile.bak Vagrantfile && \
	sed -i.bak -e "s/VmBoxNameHere/amzn2-$(PROJECT_NAME)/g" Vagrantfile && \
	vagrant reload