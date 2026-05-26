#include "postgres.h"
#include "fmgr.h"

PG_MODULE_MAGIC;
PG_FUNCTION_INFO_V1(my_get_two);

Datum
my_get_two(PG_FUNCTION_ARGS)
{
PG_RETURN_INT32(2);
}

