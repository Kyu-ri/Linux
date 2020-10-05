#include <stdio.h>
#include <stdlib.h>
#include <HIL_defs.h>
#include <HIL_types.h>
#include <signal.h>

#define MAX_PIN 31

void print_usage();
void print_full_usage();
void assert(HIL_RESULT result);

/* Main */
s32 main(s32 argc, s8 **argv) {
    u32         pin_number  = 0;
    u32         read_value  = 0;
    s32         write_value = -1;    // negative for read mode
    u32         result      = HIL_N_SUCC;

    /* Argument Check */
    if (argc != 2 && argc != 3 && argc != 4) {
        print_usage();
        assert(HIL_E_BADARGUMENTS);
    }

    if (strncmp(argv[1], "-h", 3) == 0) { // write check
        print_full_usage();
        return HIL_N_SUCC;
    }

    if (strncmp(argv[1], "-r", 3) == 0 && argc != 3) { // read check
        print_usage();
        assert(HIL_E_BADARGUMENTS);
    }

    if (strncmp(argv[1], "-w", 3) == 0 && argc != 4) { // write check
        print_usage();
        assert(HIL_E_BADARGUMENTS);
    }


    /* Argument Handling */
    if(strncmp(argv[1], "-r", 3) == 0) {    // read
        pin_number = atoi(argv[2]); // value check is not performed

        /* Range Check */
        if(pin_number > MAX_PIN || pin_number < 0) {
            print_usage();
            assert(HIL_E_BADARGUMENTS);
        }
    }else if(strncmp(argv[1], "-w", 3) == 0) {  // write
        pin_number = atoi(argv[2]); // value check is not performed
        write_value = atoi(argv[3]); // value check is not performed

        /* Range Check */
        if(pin_number > MAX_PIN || pin_number < 0) {
            print_usage();
            assert(HIL_E_BADARGUMENTS);
        }
        if(write_value != 0 && write_value != 1) {
            print_usage();
            assert(HIL_E_BADARGUMENTS);
        }
    }
    
    /* GPIO Control */
    if(write_value >= 0) {
        result = gpio_write(pin_number, (u32)write_value);
    }else{
        result = gpio_read(pin_number, &read_value);
    }

    /* Error Handling */
    if (!result) {
        assert(result);
    }
    
    /* Print Result */
    if(write_value >= 0) {
        fprintf(stdout, "Pin #%u has written as %d\n", pin_number, write_value);
    }else{
        fprintf(stdout, "Pin #%u value is %u\n", pin_number, read_value);
    }

    return result;
}

/*
 *  Print short usage for bad arguments
 * */
void print_usage() {
    fprintf(stdout, "Usage: <-w/-r/-h> <pin> [<value>]\n");
}

/*
 *  Print full usage for help
 * */
void print_full_usage() {
    fprintf(stdout, "Usage\n");
    fprintf(stdout, "\t./gpio -w <pin> [<value>]\n");
    fprintf(stdout, "\t./gpio -r <pin>\n");
    fprintf(stdout, "\t./gpio -h\n");
    fprintf(stdout, "\n\tPin number must be in 0~28\n");
    fprintf(stdout, "\tWrite value must be in 0 or 1\n");
}

void assert(HIL_RESULT result) {
#ifdef DEBUG
    if(HIL_FAILED(result)) {
        fprintf(stderr, "Error occurred [Error code: %x].\n", result);
    }
#endif
    exit(result);
}
