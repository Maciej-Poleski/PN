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

#define handle_error(msg) \
do { perror(msg); exit(EXIT_FAILURE); } while (0)

struct linux_dirent {
    long           d_ino;
    off_t          d_off;
    unsigned short d_reclen;
    char           d_name[];
};

#define BUF_SIZE 300
#define PATH_SIZE 4096+1

/**
 * Wyświetla zawartość katalogu
 * @param path nazwa potencjalnie katalogu
 */
void printDirectory(char * path,int length)
{
    path[length]='\0';
    int fd=open(path,O_RDONLY);
    if(fd==-1)
    {
        if(errno==ENOTDIR)
        {
            assert(errno==ENOTDIR);
            strcat(path,"': Not a directory\n");
            write(1,path-7,7+length+19);
        }
        else if(errno==ENOENT)
        {
            strcat(path,"': No such file or directory\n");
            write(1,path-7,7+length+29);
        }
        else
        {
            perror(path);
        }
        return;
    }
    
    path[length]='\n';
    write(1,path,length+1);

    char buf[BUF_SIZE];
    for ( ; ; ) {
        int nread = syscall(SYS_getdents, fd, buf, BUF_SIZE);
        if (nread<=0)
            break;

        for (int bpos = 0; bpos < nread;) {
            struct linux_dirent *d = (struct linux_dirent *) (buf + bpos);
            if(d->d_name[0]=='.' && (d->d_name[1]=='\0' || (d->d_name[1]=='.' && d->d_name[2]=='\0')))
            {
                bpos += d->d_reclen;
                continue;
            }
            int shift=0;
            if(path[length-1]!='/')
            {
                path[length]='/';
                shift=1;  
            }
            strcpy(path+length+shift,d->d_name);
            printDirectory(path,length+shift+strlen(d->d_name));
            bpos += d->d_reclen;
        }
    }
}

int
main(int argc, char *argv[])
{
    char path[PATH_SIZE+7]={'f','i','n','d',':',' ','`'};
    strcpy(path+7,argv[1]);
    printDirectory(path+7,strlen(path+7));
}
