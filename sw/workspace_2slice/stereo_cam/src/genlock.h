/* Keeps the two free-running cameras in step, through their frame-length registers. */
#ifndef GENLOCK_H
#define GENLOCK_H

/* Runs for good. `on_first_lock` is called once, when the cameras are in step for the first time. */
void genlock_run(void (*on_first_lock)(void));

#endif
