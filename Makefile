#
# A simple Makefile
#

PROJECT_NAME    = watchdog
PROJECT_VERSION = 1.0.0-r0.0
PROJECT_DIR     = $(pwd)$(PROJECT_NAME)
DEPLOY_DIR      = /tmp/$(PROJECT_NAME)

# Typing 'make' will invoke the first target entry in the Makefile
# (the default one in this case)
#

default: create_deploy_dir \
	create_debian-binary \
	create_data.tar.gz \
	create_control.tar.gz \
	create_$(PROJECT_NAME).ipk \
	clean

# This target entry builds the data.tar.gz

create_deploy_dir:
	rm -rf $(DEPLOY_DIR)
	mkdir -p $(DEPLOY_DIR)

create_debian-binary:
	touch $(DEPLOY_DIR)/debian-binary
	echo "2.0" > $(DEPLOY_DIR)/debian-binary

create_data.tar.gz:
	tar -cvzpf $(DEPLOY_DIR)/data.tar.gz -C $(PROJECT_DIR) . --exclude=.git* 	
	
create_control.tar.gz:    
	tar -cvzpf $(DEPLOY_DIR)/control.tar.gz -C CONTROL .
	
create_$(PROJECT_NAME).ipk:
	@cd $(DEPLOY_DIR); \
		tar -cvzpf /tmp/$(PROJECT_NAME)_$(PROJECT_VERSION)_armv7ahf-vfp-neon.ipk debian-binary data.tar.gz control.tar.gz
	
clean:
	rm -rf $(DEPLOY_DIR)/ 
		
	 


