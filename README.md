ObjectiveCTests
===============

Tests for Objective C

* Test 1 - CategoryConflictTestProject

	* Result : Objective C category conflicts when methods duplicates in static library.

	* Solution : Use prefix for category methods to avoid conflicts (ugly, but useful)
	
	* Output shown in below:

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

	* Result : Symbols duplcate when static libraries have the same implements.

	* Solution : Define two targets, one includes the common libs, the other doesn't.


* Test 3 - NSArraySerializationTest

	* Result : 

		* NSKeyedArchiver optimizes if there are the Object refereces when serialization.
		* [NSArray writeToFile:atomatically:] has no optimization on data compression.
		* GZip can compress the string data significantly.
	* Output :
	
	```
	
	132K Mar 10 11:17 test1.plist 				[NSArray writeToFile:atomatically:]
	139K Mar 10 11:17 test2.plist 				test1 : different strings
	
	123K Mar 10 11:17 test2_1.plist 			[NSArray writeToFile:atomatically:]
	6.3K Mar 10 11:17 test2_2.plist 			test2 : archive with same string
	
	132K Mar 10 11:17 test3_1.plist 			[NSArray writeToFile:atomatically:]
	 63K Mar 10 11:17 test3_2.plist 			test3_withArchiveAndGzip
	
	132K Mar 10 11:17 test4_1.plist 			[NSArray writeToFile:atomatically:]
	7.8K Mar 10 11:17 test4_2.plist 			test4_withJSONAndGZip
	
	123K Mar 10 11:17 test5_1.plist 			[NSArray writeToFile:atomatically:]
	 44K Mar 10 11:17 test5_2.plist 			test5_withDifferentStringObjectButSameContent
	
	```
		 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


