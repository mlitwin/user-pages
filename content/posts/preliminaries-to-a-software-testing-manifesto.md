---
title: "Preliminaries to a Software Testing Manifesto"
date: 2020-02-23T18:06:42-08:00
draft: false
---

I'm not quite ready for a manifesto. Still gathering my own thoughts, and trying to understand software testing terminology and methodologies. But - feels like there is a fair amount of confusion about how it's supposed to work even in the best case.

## What is a Software Test

A software test is a repeatable process applied to a software product that yields a binary pass/fail result.

## Testing Terminology

### Kinds/properties of tests

#### Primary Taxonomy

* [Unit Test, Component Test, Module Test](http://softwaretestingfundamentals.com/unit-testing/) - A test of a minimal part of a system that can be tested in isolation
  * [Solitary Unit Test](https://medium.com/@jkone27_3876/arguments-around-solitary-versus-sociable-unit-testing-3b2211b15103) - A test  where the one and only concrete service is the service under test (all other dependencies, except for data/value types are mocked)
  * [Sociable Unit Test, Component Test](https://medium.com/@jkone27_3876/arguments-around-solitary-versus-sociable-unit-testing-3b2211b15103) - A test which uses concrete service dependencies to test the class currently under test.
* [System Test](http://softwaretestingfundamentals.com/system-testing/) -  A test that focuses on verifying that a system as a whole meets specified requirements
* [Functional Test](http://softwaretestingfundamentals.com/functional-testing/) - A test of the system against the functional requirements/specifications.
* [End-to-End (E2E) Test, Chain Test](https://www.guru99.com/end-to-end-testing.html) - A test that validates the software system along with its integration with external interfaces. The purpose of end-to-end Test is to exercise a complete production-like scenario. 
* [Integration Test](http://softwaretestingfundamentals.com/integration-testing/) - A test where individual units are combined and tested as a group.
* [Acceptance Test](http://softwaretestingfundamentals.com/acceptance-testing/ )-  A test of a system for acceptability. The purpose of this test is to evaluate the system’s compliance with the business requirements and assess whether it is acceptable for delivery.

#### Secondary Taxonomies

* [User Interface Test, UI Test](https://martinfowler.com/articles/practical-test-pyramid.html). A test which starts at the User Interface level. Can be an E2E test, but could also mock services.
* [Service Test](https://www.mountaingoatsoftware.com/blog/the-forgotten-layer-of-the-test-automation-pyramid) - A hard to understand kind of test that is higher-level than a unit test, lower level than a UI test.
* [Black Box Test, Behavioral Test](http://softwaretestingfundamentals.com/black-box-testing/) - A test in which the internal structure/design/implementation of the item being tested is not known to the tester
* [White Box Test, Clear Box Test,  Glass Box Test, Transparent Box Test,  Code-Based Test,  Structural Test](http://softwaretestingfundamentals.com/white-box-testing/) - A test in which the internal structure/design/implementation of the item being tested is known to the tester.
* [Gray Box Testing](http://softwaretestingfundamentals.com/gray-box-testing/) - A test where the internal structure is partially known
* Tripwire Test (my personal terminology) - A test that verifies a function compared to a previous run of that function. The test shows whether the behavior of the function has changed, not whether that change represents a bug.
* [Automated Test](https://smartbear.com/learn/automated-testing/what-is-automated-testing/) - A test driven by software rather than humans.
* [Manual Test](https://smartbear.com/learn/automated-testing/what-is-automated-testing/) - A test driven by humans rather than software.

### Other Terms

* [Mock](https://en.wikipedia.org/wiki/Mock_object) - A simulation of a complex object or service by some simpler mechanism, for purposes of testing.
* Health Check - A test which verifies the current correct functionality of running software.

### Why we Test

The value of a test lies in what it tells you when it runs. Depending on the kind of test, and whether it passes or fails, it could tell you:

* The application code is correct
* The application code has a bug
* The test code is correct
* The test code has a bug
* A dependent service has a bug
* Dependent services are working as expected
* Something is wrong on the internet which is interfering with the test
* The part of the internet the test relies on is working.

Breaking this down according to the kind of test, I think the following are true:

* Solitary Unit Tests, after some initial work to stabilize them, generally tell you whether your application code is correct or has bug. Generally the issue is not in the test code.
* Sociable Unit Tests mostly tell you application code is correct or has bug. The more you mock, the more the errors tend to be in the test code itself, however.
* End-to-End tests mostly tell you whether your test code is correct or has a bug. After that, they test for errors in dependent services, or the generalized issues with connectivity.

End-to-End tests seem more like Health Checks than tests per se. Having them run against released software would increase the value of running them as tests against pre-released software. If the live test works, but the pre-release test does not, it suggests that any issue is not simply connectivity or a downstream service dependency.

## References

* https://martinfowler.com/articles/practical-test-pyramid.html
* https://watirmelon.blog/testing-pyramids/
* http://softwaretestingfundamentals.com/
* https://www.istqb.org/downloads/send/20-istqb-glossary/297-istqb_glossary-all-terms_v3-3.html



