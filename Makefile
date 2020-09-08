guard:		FORCE
		@(echo "use 'make all' or 'make rejs9' to build the app")

all:		FORCE
		build/mkjs9app --all

rejs9:		FORCE
		build/mkjs9app --rejs9

install:	FORCE
		build/mkjs9app --install

spell:		FORCE
		@(aspell -c README.md)

clean:		FORCE
		@($(RM) *.a *.so *.dylib *.o *.exe core core.* errs *pure* \
			foo* *~ \#* TAGS *.E a.out errors */*~ \
			gmon.out *.pg *.bak config.info config.log \
			autom4te.cache a.out.dSYM tmp/*)

FORCE:

