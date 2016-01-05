################################################
#                 WARNING!                     #
# This file has been auto-generated by xdress. #
# Do not modify!!!                             #
#                                              #
#                                              #
#                    Come on, guys. I mean it! #
################################################
"""
"""
cimport dtypes
cimport numpy as np
from libc.stdlib cimport free
from libcpp cimport bool as cpp_bool
from libcpp.string cimport string as std_string
import dtypes
from libcpp.vector cimport vector as cpp_vector

import dtypes
import numpy as np

np.import_array()



cdef class Dag_Slicer:
    """no docstring for {'tarbase': 'dag_slicer', 'tarname': 'Dag_Slicer', 'language': 'c++', 'srcname': 'Dag_Slicer', 'sidecars': (), 'incfiles': ('dag_slicer.hpp',), 'srcfiles': ('src/dag_slicer.hpp', 'src/dag_slicer.cpp')}, please file a bug report!"""



    # constuctors
    def __cinit__(self, *args, **kwargs):
        self._inst = NULL
        self._free_inst = True

        # cached property defaults
        self._group_ids = None
        self._dum_pnts = None
        self._group_names = None
        self._path_coding = None
        self._slice_x_pnts = None
        self._slice_y_pnts = None

    def __init__(self, file_to_slice, ax, coordinate, by_grp=False):
        """Dag_Slicer(self, file_to_slice, ax, coordinate, by_grp=False)
        """
        cdef char * file_to_slice_proxy
        file_to_slice_bytes = file_to_slice.encode()
        self._inst = new cpp_dag_slicer.Dag_Slicer(std_string(<char *> file_to_slice_bytes), <int> ax, <double> coordinate, <bint> by_grp)
    
    
    def __dealloc__(self):
        if self._free_inst and self._inst is not NULL:
            free(self._inst)

    # attributes
    property axis:
        """no docstring for axis, please file a bug report!"""
        def __get__(self):
            return int((<cpp_dag_slicer.Dag_Slicer *> self._inst)._axis)
    
        def __set__(self, value):
            (<cpp_dag_slicer.Dag_Slicer *> self._inst)._axis = <int> value
    
    
    property by_group:
        """no docstring for by_group, please file a bug report!"""
        def __get__(self):
            return bool((<cpp_dag_slicer.Dag_Slicer *> self._inst)._by_group)
    
        def __set__(self, value):
            (<cpp_dag_slicer.Dag_Slicer *> self._inst)._by_group = <bint> value
    
    
    property coord:
        """no docstring for coord, please file a bug report!"""
        def __get__(self):
            return float((<cpp_dag_slicer.Dag_Slicer *> self._inst)._coord)
    
        def __set__(self, value):
            (<cpp_dag_slicer.Dag_Slicer *> self._inst)._coord = <double> value
    
    
    property debug:
        """no docstring for debug, please file a bug report!"""
        def __get__(self):
            return bool((<cpp_dag_slicer.Dag_Slicer *> self._inst)._debug)
    
        def __set__(self, value):
            (<cpp_dag_slicer.Dag_Slicer *> self._inst)._debug = <bint> value
    
    
    property group_ids:
        """no docstring for group_ids, please file a bug report!"""
        def __get__(self):
            cdef np.ndarray group_ids_proxy
            cdef np.npy_intp group_ids_proxy_shape[1]
            if self._group_ids is None:
                group_ids_proxy_shape[0] = <np.npy_intp> (<cpp_dag_slicer.Dag_Slicer *> self._inst).group_ids.size()
                group_ids_proxy = np.PyArray_SimpleNewFromData(1, group_ids_proxy_shape, np.NPY_INT32, &(<cpp_dag_slicer.Dag_Slicer *> self._inst).group_ids[0])
                self._group_ids = group_ids_proxy
            return self._group_ids
    
        def __set__(self, value):
            cdef cpp_vector[int] value_proxy
            cdef int ivalue
            cdef int value_size
            cdef int * value_data
            # value is a ('vector', 'int32', 0)
            value_size = len(value)
            if isinstance(value, np.ndarray) and (<np.ndarray> value).descr.type_num == dtypes.xd_vector_int.num:
                value_data = <int *> np.PyArray_DATA(<np.ndarray> value)
                value_proxy = cpp_vector[int](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = value_data[ivalue]
            else:
                value_proxy = cpp_vector[int](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = <int> value[ivalue]
            (<cpp_dag_slicer.Dag_Slicer *> self._inst).group_ids = value_proxy
            self._group_ids = None
    
    
    property dum_pnts:
        """no docstring for dum_pnts, please file a bug report!"""
        def __get__(self):
            cdef np.ndarray dum_pnts_proxy
            cdef np.npy_intp dum_pnts_proxy_shape[1]
            if self._dum_pnts is None:
                dum_pnts_proxy_shape[0] = <np.npy_intp> (<cpp_dag_slicer.Dag_Slicer *> self._inst).dum_pnts.size()
                dum_pnts_proxy = np.PyArray_SimpleNewFromData(1, dum_pnts_proxy_shape, np.NPY_FLOAT64, &(<cpp_dag_slicer.Dag_Slicer *> self._inst).dum_pnts[0])
                self._dum_pnts = dum_pnts_proxy
            return self._dum_pnts
    
        def __set__(self, value):
            cdef cpp_vector[double] value_proxy
            cdef int ivalue
            cdef int value_size
            cdef double * value_data
            # value is a ('vector', 'float64', 0)
            value_size = len(value)
            if isinstance(value, np.ndarray) and (<np.ndarray> value).descr.type_num == dtypes.xd_vector_double.num:
                value_data = <double *> np.PyArray_DATA(<np.ndarray> value)
                value_proxy = cpp_vector[double](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = value_data[ivalue]
            else:
                value_proxy = cpp_vector[double](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = <double> value[ivalue]
            (<cpp_dag_slicer.Dag_Slicer *> self._inst).dum_pnts = value_proxy
            self._dum_pnts = None
    
    
    property filename:
        """no docstring for filename, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_dag_slicer.Dag_Slicer *> self._inst)._filename.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_dag_slicer.Dag_Slicer *> self._inst)._filename = std_string(<char *> value_bytes)
    
    
    property group_names:
        """no docstring for group_names, please file a bug report!"""
        def __get__(self):
            cdef np.ndarray group_names_proxy
            cdef np.npy_intp group_names_proxy_shape[1]
            if self._group_names is None:
                group_names_proxy_shape[0] = <np.npy_intp> (<cpp_dag_slicer.Dag_Slicer *> self._inst).group_names.size()
                group_names_proxy = np.PyArray_SimpleNewFromData(1, group_names_proxy_shape, dtypes.xd_str.num, &(<cpp_dag_slicer.Dag_Slicer *> self._inst).group_names[0])
                self._group_names = group_names_proxy
            return self._group_names
    
        def __set__(self, value):
            cdef cpp_vector[std_string] value_proxy
            cdef int ivalue
            cdef int value_size
            cdef std_string * value_data
            # value is a ('vector', 'str', 0)
            value_size = len(value)
            if isinstance(value, np.ndarray) and (<np.ndarray> value).descr.type_num == dtypes.xd_str.num:
                value_data = <std_string *> np.PyArray_DATA(<np.ndarray> value)
                value_proxy = cpp_vector[std_string](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = value_data[ivalue]
            else:
                value_proxy = cpp_vector[std_string](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = <std_string> value[ivalue]
            (<cpp_dag_slicer.Dag_Slicer *> self._inst).group_names = value_proxy
            self._group_names = None
    
    
    property path_coding:
        """no docstring for path_coding, please file a bug report!"""
        def __get__(self):
            cdef np.ndarray path_coding_proxy
            cdef np.npy_intp path_coding_proxy_shape[1]
            if self._path_coding is None:
                path_coding_proxy_shape[0] = <np.npy_intp> (<cpp_dag_slicer.Dag_Slicer *> self._inst).path_coding.size()
                path_coding_proxy = np.PyArray_SimpleNewFromData(1, path_coding_proxy_shape, dtypes.xd_vector_int.num, &(<cpp_dag_slicer.Dag_Slicer *> self._inst).path_coding[0])
                self._path_coding = path_coding_proxy
            return self._path_coding
    
        def __set__(self, value):
            cdef cpp_vector[cpp_vector[int]] value_proxy
            cdef int ivalue
            cdef int value_size
            cdef cpp_vector[int] * value_data
            # value is a ('vector', ('vector', 'int32', 0), 0)
            value_size = len(value)
            if isinstance(value, np.ndarray) and (<np.ndarray> value).descr.type_num == dtypes.xd_vector_int.num:
                value_data = <cpp_vector[int] *> np.PyArray_DATA(<np.ndarray> value)
                value_proxy = cpp_vector[cpp_vector[int]](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = value_data[ivalue]
            else:
                value_proxy = cpp_vector[cpp_vector[int]](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = <cpp_vector[int]> value[ivalue]
            (<cpp_dag_slicer.Dag_Slicer *> self._inst).path_coding = value_proxy
            self._path_coding = None
    
    
    property slice_x_pnts:
        """no docstring for slice_x_pnts, please file a bug report!"""
        def __get__(self):
            cdef np.ndarray slice_x_pnts_proxy
            cdef np.npy_intp slice_x_pnts_proxy_shape[1]
            if self._slice_x_pnts is None:
                slice_x_pnts_proxy_shape[0] = <np.npy_intp> (<cpp_dag_slicer.Dag_Slicer *> self._inst).slice_x_pnts.size()
                slice_x_pnts_proxy = np.PyArray_SimpleNewFromData(1, slice_x_pnts_proxy_shape, dtypes.xd_vector_double.num, &(<cpp_dag_slicer.Dag_Slicer *> self._inst).slice_x_pnts[0])
                self._slice_x_pnts = slice_x_pnts_proxy
            return self._slice_x_pnts
    
        def __set__(self, value):
            cdef cpp_vector[cpp_vector[double]] value_proxy
            cdef int ivalue
            cdef int value_size
            cdef cpp_vector[double] * value_data
            # value is a ('vector', ('vector', 'float64', 0), 0)
            value_size = len(value)
            if isinstance(value, np.ndarray) and (<np.ndarray> value).descr.type_num == dtypes.xd_vector_double.num:
                value_data = <cpp_vector[double] *> np.PyArray_DATA(<np.ndarray> value)
                value_proxy = cpp_vector[cpp_vector[double]](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = value_data[ivalue]
            else:
                value_proxy = cpp_vector[cpp_vector[double]](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = <cpp_vector[double]> value[ivalue]
            (<cpp_dag_slicer.Dag_Slicer *> self._inst).slice_x_pnts = value_proxy
            self._slice_x_pnts = None
    
    
    property slice_y_pnts:
        """no docstring for slice_y_pnts, please file a bug report!"""
        def __get__(self):
            cdef np.ndarray slice_y_pnts_proxy
            cdef np.npy_intp slice_y_pnts_proxy_shape[1]
            if self._slice_y_pnts is None:
                slice_y_pnts_proxy_shape[0] = <np.npy_intp> (<cpp_dag_slicer.Dag_Slicer *> self._inst).slice_y_pnts.size()
                slice_y_pnts_proxy = np.PyArray_SimpleNewFromData(1, slice_y_pnts_proxy_shape, dtypes.xd_vector_double.num, &(<cpp_dag_slicer.Dag_Slicer *> self._inst).slice_y_pnts[0])
                self._slice_y_pnts = slice_y_pnts_proxy
            return self._slice_y_pnts
    
        def __set__(self, value):
            cdef cpp_vector[cpp_vector[double]] value_proxy
            cdef int ivalue
            cdef int value_size
            cdef cpp_vector[double] * value_data
            # value is a ('vector', ('vector', 'float64', 0), 0)
            value_size = len(value)
            if isinstance(value, np.ndarray) and (<np.ndarray> value).descr.type_num == dtypes.xd_vector_double.num:
                value_data = <cpp_vector[double] *> np.PyArray_DATA(<np.ndarray> value)
                value_proxy = cpp_vector[cpp_vector[double]](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = value_data[ivalue]
            else:
                value_proxy = cpp_vector[cpp_vector[double]](<size_t> value_size)
                for ivalue in range(value_size):
                    value_proxy[ivalue] = <cpp_vector[double]> value[ivalue]
            (<cpp_dag_slicer.Dag_Slicer *> self._inst).slice_y_pnts = value_proxy
            self._slice_y_pnts = None
    
    
    property verbose:
        """no docstring for verbose, please file a bug report!"""
        def __get__(self):
            return bool((<cpp_dag_slicer.Dag_Slicer *> self._inst)._verbose)
    
        def __set__(self, value):
            (<cpp_dag_slicer.Dag_Slicer *> self._inst)._verbose = <bint> value
    
    
    # methods
    def create_slice(self, ):
        """create_slice(self, )
        no docstring for create_slice, please file a bug report!"""
        cdef int a = (<cpp_dag_slicer.Dag_Slicer *> self._inst).create_slice()
        return a
    
    
    def rename_group(self, id, new_name):
        """rename_group(self, id, new_name)
        renames a group in the underlying maob instance."""
        cdef char * new_name_proxy
        new_name_bytes = new_name.encode()
        (<cpp_dag_slicer.Dag_Slicer *> self._inst).rename_group(<int> id, std_string(<char *> new_name_bytes))
    
    def write_file(self, new_filename):
        """write_file(self, new_filename)
        writes a file with the name, new filename. Will warn the user if the filename is the same as the current one."""
        cdef char * new_filename_proxy
        new_filename_bytes = new_filename.encode()
        (<cpp_dag_slicer.Dag_Slicer *> self._inst).write_file(std_string(<char *> new_filename_bytes))
        

    pass


        



{'cpppxd_footer': '', 'pyx_header': '', 'pxd_header': '', 'pxd_footer': '', 'cpppxd_header': '', 'pyx_footer': ''}
