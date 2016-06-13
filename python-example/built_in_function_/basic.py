#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<abs(-1)>>")
print(abs(-1))

print("<<all([True, True, True])>>")
print(all([True, True, True]))

print("<<any([False, True, False])>>")
print(any([False, True, False]))

print("<<bin(3)>>")
print(bin(3))

print("<<print(i, ' : ', bool(i))>>")
bool_0 = ["", "a string", 0, 1, False, True, None, [], [0], {}, {"x": ""}]
for i in bool_0:
    print(i, ' : ', bool(i))

print("<<bytearray('bytearray')>>")
print(bytearray('bytearray'))

print("<<callable(callable_)>>")
def callable_(x,y):
    return x+y
print(callable(callable_))

print("<<chr(65)>>")
print(chr(65))

print("<<@classmethod>>")
class ClassmethodClass():
    x = 10
    @classmethod
    def function_0(cls):
        return 2 * cls.x
print(ClassmethodClass.function_0())

print("<<cmp(1,2)>>")
print(cmp(1,2))

print("<<compile(contents, 'compile_module.py', 'exec')>>")
with open('compile_module.py') as f:
    contents = f.read()
compiled_obj_0 = compile(contents, 'compile_module.py', 'exec')
exec(compiled_obj_0)

print("<<compile(compiled_expression, '<string>', 'eval')>>")
compiled_expression = "5+5"
compiled_obj_1 = compile(compiled_expression, '<string>', 'eval')
print(eval(compiled_obj_1))

print("<<complex(4, 2)>>")
print(complex(4, 2))

print("<<delattr(delattr_obj, 'x')>>")
class DelattrClass():
    def __init__(self):
        self.x = 10
delattr_obj = DelattrClass()
print(delattr_obj.x)
delattr(delattr_obj, 'x')
try:
    print(delattr_obj.x)
except AttributeError:
    print("AttributeError")

print("<<dict(x=10, y=dict(a=1, b='bbb'), z='zzz')>>")
print(dict(x=10, y=dict(a=1, b='bbb'), z='zzz'))

print("<<dir(dir_0)>>")
dir_0 = "dir 0"
print(dir(dir_0))

print("<<divmod(5, 2)>>")
print(divmod(5, 2))

print("<<list(enumerate(['enum_0', 'enum_1', 'enum_2']))>>")
print(list(enumerate(['enum_0', 'enum_1', 'enum_2'])))

print("<<eval('eval_0 * 5')>>")
eval_0 = 10
print(eval('eval_0 * 5'))

print("<<execfile('compile_module.py')>>")
execfile('compile_module.py')

print("<<file('compile_module.py')>>")
print(file('compile_module.py'))

print("<<filter(starts_with_vowel, ['hello', 'apple', 'excellent', 'dictionary', 'our'])>>")
def starts_with_vowel(the_str):
    vowels = ['a', 'e', 'i', 'o', 'u']
    if len(the_str) == 0:
        return False
    return the_str[0].lower() in vowels
print(filter(starts_with_vowel, ['hello', 'apple', 'excellent', 'dictionary', 'our']))

print("<<float(10)>>")
print(float(10))

print("<<[[fill]align][sign][#][0][width][,][.precision][type]>>")
print(format('left', "<15"))
print(format('right', ">15"))
print(format('center', "^15"))
print(format('fill', "-^15"))
print(format(5, "+"))
print(format(-5, "-"))
print(format(5, " "))
print(format(.123, "^010"))
print(format(3, "#b"))
print(format(65, "#c"))
print(format(3, "#d"))
print(format(3, "#o"))
print(format(65, "#x"))
print(format(65, "#X"))
print(format(1.23, "e"))
print(format(1.23, "E"))
print(format(1.23, "f"))
print(format(1.23, "%"))
print(format(1.23, ".4f"))

print("<<float(10)>>")
frozenset_0 = frozenset(set([0, 1, 2, 3, 4]))
try:
    frozenset_0.add(5)
except AttributeError:
    print("AttributeError")

print("<<getattr(getattr_0, 'upper')()>>")
getattr_0 = "getattr"
print(getattr(getattr_0, 'upper')())

print("<<globals()>>")
print(globals())

print("<<globals()>>")
hasattr_0 = "hasattr"
print(hasattr(hasattr_0, "upper"))

print("<<hash(hash_0)>>")
hash_0 = "hash"
print(hash(hash_0))

print("<<help(str)>>")
help(str)

print("<<hex(255)>>")
print(hex(255))

print("<<id('id')>>")
print(id('id'))

#print("<<id('id')>>")
#print(input('please key in (2+3) : '))

print("<<int('100', base=10)>>")
print(int('100', base=10))

print("<<isinstance('isinstance', basestring)>>")
print(isinstance('isinstance', basestring))

class IssubclassClass():
    def function_0(self):
        return 0
class SubIssubclassClass(IssubclassClass):
    def function_0(self):
        return 0
print("<<issubclass(SubIssubclassClass, IssubclassClass)>>")
print(issubclass(SubIssubclassClass, IssubclassClass))

print("<<iter(['a', 'b', 'c'])>>")
for ele in iter(['a', 'b', 'c']):
    print(ele)

print("<<len(['a', 'b', 'c'])>>")
print(len(['a', 'b', 'c']))

print("<<list('abc')>>")
print(list('abc'))

print("<<locals()>>")
print(locals())

print("<<long('100', base=10)>>")
print(long('100', base=10))

print("<<map(sqr, map_0)>>")
map_0 = [1, 2, 3, 4, 5]
def sqr(x):
    return x ** 2
print(map(sqr, map_0))

print("<<max(1,2,3,4,5)>>")
print(max(1,2,3,4,5))

print("<<min(1,2,3,4,5)>>")
print(min(1,2,3,4,5))

print("<<next(iter([1,2,3,4,5]))>>")
print(next(iter([1,2,3,4,5])))

print("<<object()>>")
print(object())

print("<<oct(16)>>")
print(oct(16))

print("<<open('compile_module.py')>>")
with open('compile_module.py') as f:
    contents = f.read()
print(contents)

print("<<ord('a')>>")
print(ord('a'))

print("<<pow(2,3,4)>>")
print(pow(2,3))

print("<<property>>")
class PropertyClass():
    def __init__(self):
        self._x = None
    def getx(self):
        return self._x
    def setx(self, value):
        self._x = value
    def delx(self):
        del self._x
    x = property(getx, setx, delx, "This is the 'x' property.")
property_0 = PropertyClass()
property_0.x = 3
print(property_0.x)

print("<<range(5, 20, 3)>>")
print(range(5, 20, 3))

#print("<<raw_input>>")
#print(raw_input('please key in : '))

print("<<reduce(sum_, reduce_0)>>")
reduce_0 = [1, 2, 3, 4, 5]
def sum_(x, y):
    return x + y
print(reduce(sum_, reduce_0))

print("<<repr('repr')>>")
print(repr('repr'))

print("<<reversed(['a', 'b', 'c'])>>")
reversed_0 = reversed(['a', 'b', 'c'])
print(list(reversed_0))

print("<<round(12.345)>>")
print(round(12.345))

print("<<set(['aa', 'bb', 'cc', 'aa'])>>")
print(set(['aa', 'bb', 'cc', 'aa']))

print("<<setattr>>")
class SetattrClass():
    def function_0(self):
        return 3
setattr_0 = SetattrClass()
setattr(setattr_0, "setattr_", "setattr_0")
print(setattr_0.setattr_)

print("<<slice_0.start, slice_0.stop, slice_0.step>>")
slice_0 = slice(1, 10, 0)
print(slice_0.start, slice_0.stop, slice_0.step)

print("<<sorted([2, 4, 3, 5, 1])>>")
print(sorted([2, 4, 3, 5, 1]))

print("<<@staticmethod>>")
class StaticmethodClass():
    @staticmethod
    def function_0():
        return 10
print(StaticmethodClass.function_0())

print("<<str(12.345)>>")
print(str(12.345))

print("<<sum([2, 4, 3, 5, 1])>>")
print(sum([2, 4, 3, 5, 1]))

print("<<tuple([2, 4, 3, 5, 1])>>")
print(tuple([2, 4, 3, 5, 1]))

print("<<type('str')>>")
print(type('str'))

print("<<unichr(97)>>")
print(unichr(97))

print("<<unicode('str')>>")
print(unicode('str'))

print("<<vars()>>")
print(vars())

print("<<zip(zip_0, zip_1)>>")
zip_0 = [1, 2, 3]
zip_1 = [4, 5, 6]
zip_total = zip(zip_0, zip_1)
print(zip_total)
zip_a, zip_b = zip(*zip_total)
print(zip_0 == list(zip_a) and zip_1 == list(zip_b))


