ObjectiveCTests
===============

Tests for Objective C

* Test 1 - CategoryConflictTestProject

Test Objective C category conflicts when methods duplicates in static library.


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

Summary:
The method in last static library linked in takes affect in run time.


