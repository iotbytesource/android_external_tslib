/*
 *  tslib/src/ts_config.c
 *
 *  Copyright (C) 2001 Russell King.
 *
 * This file is placed under the LGPL.  Please see the file
 * COPYING for more details.
 *
 * $Id: ts_config.c,v 1.5 2004/10/19 22:01:27 dlowder Exp $
 *
 * Read the configuration and load the appropriate drivers.
 */
#include "config.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tslib-private.h"

/* Maximum line size is BUF_SIZE - 2 
 * -1 for fgets and -1 to test end of line
 */
#define BUF_SIZE 512

int ts_config(struct tsdev *ts)
{
	char buf[BUF_SIZE], *p;
	FILE *f;
	int line = 0;
	int ret = 0;

	char *conffile;

        if( (conffile = getenv("TSLIB_CONFFILE")) == NULL) {
                conffile = strdup (TS_CONF);
        }

	f = fopen(conffile, "r");
	if (!f) {
		perror("Couldnt open tslib config file");
                printf(" open tslib config file fails \n");
		return -1;
	}

        printf(" open tslib config file success, start read.... \n");

	buf[BUF_SIZE - 2] = '\0';
	while ((p = fgets(buf, BUF_SIZE, f)) != NULL) {
		char *e;
		char *tok;
		char *module_name;

		line++;
		//printf("00000000000000000000000000\n");
		/* Chomp */
		e = strchr(p, '\n');
		if (e) {
			*e = '\0';
		}

		/* Did we read a whole line? */
		if (buf[BUF_SIZE - 2] != '\0') {
			ts_error("%s: line %d too long\n", conffile, line);
			break;
		}
		//printf("111111111111111111111111111111111111\n");
                printf("read %d line   %s\n",line,p);

		tok = strsep(&p, " \t");
		
		/* Ignore comments or blank lines.
		 * Note: strsep modifies p (see man strsep)
		 */

		if (p==NULL || *tok == '#')
			continue;
		//printf("2222222222222222222222222222222222\n");
		/* Search for the option. */
		if (strcasecmp(tok, "module") == 0) {
			module_name = strsep(&p, " \t");
			ret = ts_load_module(ts, module_name, p);
		}
		else if (strcasecmp(tok, "module_raw") == 0) {
			//printf("333333333333333333333333333\n");
			module_name = strsep(&p, " \t");
			ret = ts_load_module_raw(ts, module_name, p);

		} else {
			//printf("777777777777777777777777\n");
			ts_error("%s: Unrecognised option %s:%d:%s\n", conffile, line, tok);
			break;
		}
		if (ret != 0) {
			//printf("4444444444444444444444444444444444\n");
			ts_error("Couldnt load module %s\n", module_name);
                      printf("Couldnt load module %s\n", module_name);
			break;
		}
	}
	//printf("5555555555555555555555555555555\n");
	if (ts->list_raw == NULL) {
		//printf("66666666666666666666666666666666666\n");
		ts_error("No raw modules loaded.\n");
		ret = -1;
	}

	fclose(f);
	printf("ret = %d\n", ret);
	return ret;
}
