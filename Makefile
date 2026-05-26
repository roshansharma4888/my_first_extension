EXTENSION = my_first_extension

DATA = my_first_extension--0.0.3.sql \
       my_first_extension--0.0.1--0.0.2.sql \
       my_first_extension--0.0.2--0.0.3.sql

MODULE_big = my_first_extension
OBJS = my_first_extension.o

REGRESS = my_first_extension-main-test \
          my_first_extension-my_one-test \
          my_first_extension-my_two-test

PG_CONFIG ?= pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

