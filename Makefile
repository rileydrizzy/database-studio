build:
	@echo "Building the Database"
	./build_db.sh
save:
	@echo "Saving and Pushing to Github"
	. ./auto_save.sh


	