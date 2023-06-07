#include <syslog.h>
#include <errno.h>
#include <stdlib.h>
#include <stdio.h>


int main(int argc, char **argv) {

openlog(NULL,0,LOG_USER);
if (argc!=3) { 
	syslog(LOG_ERR,"Invalid number of arguments: %d",argc);
	return 1;
}

const char *filename = argv[1]; 
FILE *file = fopen(filename,"w");
int err=errno;
if (file==NULL) {
	if (err==2) {
		syslog(LOG_ERR,"No such file or directory");
		return 1;
	}
	else {
		syslog(LOG_ERR,"Error opening file %d",err);
		return 1;
	}
}
else {
	syslog(LOG_DEBUG,"Writing %s to %s",argv[2],argv[1]);
	fclose(file);
	closelog();
	return 0;
} 

return 0;
}