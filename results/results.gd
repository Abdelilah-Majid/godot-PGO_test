extends Node


#cpu test in ms
var cpu_test_average_time_one_without_PGO = 0.006035
var cpu_test_average_time_all_without_PGO = 93472

var cpu_test_average_time_one_while_PGO_is_generating_gcda_files = 0.00677
var cpu_test_average_time_all_while_PGO_is_generating_gcda_files = 104023

var cpu_test_average_time_one_using_PGO = 0.005075
var cpu_test_average_time_all_using_PGO = 77485


#gpu test
var gpu_test_average_fps_without_PGO = 31

var gpu_test_average_fps_while_PGO_is_generating_gcda_files = 29

var gpu_test_average_fps_using_pgo = 29



#(cpu & gpu) test
var cpu_and_gpu_test_fps_without_PGO = 36

var cpu_and_gpu_test_fps_while_PGO_is_generating_gcda_files = 34

var cpu_and_gpu_test_fps_using_PGO = 59
