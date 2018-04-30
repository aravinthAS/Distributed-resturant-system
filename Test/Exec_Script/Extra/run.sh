#!/bin/bash

{ time sh test_overload_with_one_receptionist.sh; } 2> time_one.txt

{ time sh test_overload_with_multiple_receptionist.sh;} 2> time_multi.txt
