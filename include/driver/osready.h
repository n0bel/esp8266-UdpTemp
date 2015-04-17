/*
 * osready.h
 *
 *  Created on: Apr 10, 2015
 *      Author: kevinu
 *
 *      Calls back when wifi connects or fails
 *
 */

#ifndef INCLUDE_DRIVER_OSREADY_H_
#define INCLUDE_DRIVER_OSREADY_H_


// osready
// starts checking to see if the wifi is connected
// arg1 callback [ void readyfunc(int success) ]
// arg2 verbose/silent true/false
void osready(void (*rf)(int success),int verbose);

// osreadystop
// enough checking already!
void osreadystop();

#endif /* INCLUDE_DRIVER_OSREADY_H_ */
