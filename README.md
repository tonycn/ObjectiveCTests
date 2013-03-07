ObjectiveCTests
===============

Tests for Objective C

* Test 1 - CategoryConflictTestProject

Result : Objective C category conflicts when methods duplicates in static library.

Solution : Use prefix for category methods to avoid conflicts (ugly, but useful)

```
// Test code
[@"" test];

[@"" testInCate];
[@"" testInCate1];
[@"" testInCate2];
  
// Output:
test in cate1

testInCate in cate
test in cate1

testInCate1 in cate1
test in cate1

testInCate2 in cate2
test in cate1
```


* Test 2 - StaticLibDuplicatedSymbol

Result : Symbols duplcate when static libraries have the same implements.

Solution : Define two targets, one includes the common libs, the other doesn't.
