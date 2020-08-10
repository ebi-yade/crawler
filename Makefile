PROJECT_NAME=crawler
init:
	git clone https://github.com/ebi-yade/go-crawler src && \
	cp Makefile.src src/Makefile
update:
	cd src && \
	git pull origin master && \
	cd ..
vagrant-up:
	cd vagrant && \
	vagrant up && \
	cd ..
vagrant-ssh:
	cd vagrant && \
	vagrant ssh
vagrant-halt:
	cd vagrant && \
	vagrant halt && \
	cd ..
vagrant-reload:
	cd vagrant && \
	cp Vagrantfile.bak Vagrantfile && \
	sed -i.bak -e "s/VmBoxNameHere/amzn2-$(PROJECT_NAME)/g" Vagrantfile && \
	vagrant reload --provision && \
	cd ..
terraform-apply:
	cd terraform && \
	terraform apply && \
	cd ..
terraform-destroy:
	cd terraform && \
	terraform destroy && \
	cd ..