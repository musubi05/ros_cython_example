import ros_cython_example.hello as hello
import test

cdef extern from "ros_cython_example/add_two_ints.h":
    int c_add_two_ints(int a, int b)

def add_two_ints(a, b):
    hello.dump()
    test.dump()
    return c_add_two_ints(a, b)
