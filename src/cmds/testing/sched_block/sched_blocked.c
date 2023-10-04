#include <assert.h>
#include <stdio.h>
#include <pthread.h>
#include <kernel/time/ktime.h>

void* blocked_thread(void* unused) {
    printf("In blocked thread\n");
    while(1) {}
    printf("Never here\n");
    return 0;
}

int main() {
    pthread_t blocked_thread_id;
    pthread_attr_t attr;

    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    int ret = pthread_create(&blocked_thread_id, &attr, blocked_thread, NULL);
    assert(ret == 0);
    printf("We are here, yay!\n");
    while(1) {
    }
}
