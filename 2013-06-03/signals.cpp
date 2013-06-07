#include <fcntl.h>
#include <sys/ioctl.h>
#include <signal.h>
#include <cstdio>
#include <cstdlib>
#include <termios.h>
#include <unistd.h>

#include <iostream>
#include <cstring>
#include <atomic>

static struct termios stored_settings;

void set_keypress()
{
    struct termios new_settings;
	tcgetattr(0,&stored_settings);
	new_settings = stored_settings;
	/* Disable canonical mode, and set buffer size to 1 byte */
	new_settings.c_lflag &= (~ICANON);
	new_settings.c_cc[VTIME] = 0;
	new_settings.c_cc[VMIN] = 1;
	tcsetattr(0,TCSANOW,&new_settings);
}
 
void reset_keypress()
{
	tcsetattr(0,TCSANOW,&stored_settings);
}

std::atomic<int> state;

void func(int signo, siginfo_t *info, void *context)
{
    if(state!=0)
        return;
    if(info->si_fd==0)
    {
        char buf;
        if(read(0,&buf,1)>0)
        {
            state=buf;
        }
    }
}

int main(int argc, char* argv[])
{
	set_keypress();
        fcntl(0,F_SETFL,O_ASYNC);
        fcntl(0,F_SETSIG,SIGRTMIN+1);
        fcntl(0,F_SETOWN,getpid());
        
        sigset_t sigset;
        sigemptyset(&sigset);
        
        struct sigaction sa;
        memset(&sa,0,sizeof(sa));
        sa.sa_flags=SA_SIGINFO;
//         sa.sa_mask=sigset;
//         sa.sa_restorer=0;
        sa.sa_sigaction=func;
//         sa.sa_handler=0;
        sigaction(SIGRTMIN+1,&sa,nullptr);
        state=0;
        for(;;)
        {
            pause();
            int c;
            while((c=state.exchange(0))!=0)
            {
                char cc=c;
                write(1,&cc,1);
            }
        }
	reset_keypress();
	return 0;
}
