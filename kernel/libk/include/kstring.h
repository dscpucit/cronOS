#pragma once

#ifndef __K_STR_H__
#define __K_STR_H__

#include <types.h>
#include <sys/cdefs.h>

size_t kstrlen(const char *__str);
char * kitoa(unsigned int integer);

#endif // __K_STR_H__
