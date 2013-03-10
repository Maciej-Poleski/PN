#include <stddef.h>
#include <iostream>

#include <dirent.h>     /* Defines DT_* constants */
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <string.h>
#include <stddef.h>
#include <assert.h>
#include <errno.h>

using namespace std;

struct linux_dirent {
    long           d_ino;
    off_t          d_off;
    unsigned short d_reclen;
    char           d_name[];
};

int main()
{
    linux_dirent d;
    cout<<sizeof(d.d_reclen)<<' '<<offsetof(linux_dirent,d_reclen)<<'\n';
    cout<<sizeof(d.d_name)<<' '<<offsetof(linux_dirent,d_name)<<'\n';
}