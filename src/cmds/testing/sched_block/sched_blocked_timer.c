#include <assert.h>
#include <stdio.h>
#include <pthread.h>
#include <kernel/time/ktime.h>
#include <kernel/time/timer.h>

void* blocked_thread(void* unused) {
    printf("In blocked thread\n");
    while(1) {}
    printf("Never here\n");
    return 0;
}
int dummy_var = 0;
void dummy_timer_handler() {
    dummy_var++;
    return;
}
int main() {
    printf("Sched block with timer\n");
    struct sys_timer* dummy_timer;
    if (timer_set(&dummy_timer, TIMER_PERIODIC, 1000, dummy_timer_handler, NULL)) {
        printf("timer_set() fail\n");
        assert(0);
    }

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
