## What to check for?

1. For duplication.
   1. If there is repetitive code, copy-pasted from existing or new code that’s added in multiple locations.
   2. Did the developer make use of existing methods and helper classes available in the application or added new ones again.
2. For performance.
3. Usage of recursive methods, loops, and algorithms.
4. The database in terms of the total number of queries, an average execution time of queries, and proper use of indexation where ever necessary.
5. Request and response payload size ( in terms of min-max and average)
6. For readability and understanding.
7. Are function names, objects, conditional statements readable or you would need comments to know more about the code.
8. [This example](https://github.com/coloredcow-admin/tbxi-portal-2.0-webapp/pull/279#discussion_r313014582) shows that a method had a different name while it was actually doing something else. Also, the functionality could’ve been made generic while it was written very specifically around a certain use-case.
9. For Test Coverage.
10. Meaningful test cases segregated into Unit/Feature tests.
11. Names of test cases should be much like documentation that helps understand what the feature does.
12. For bugs that come up on production, regression tests pointing to the bug are mandatory.
13. For functions with multiple responsibilities. Every function should have a single-use.
14. For the scope of refactoring and making architectural changes.
15. For coupling.
16. If modules that can be separated are utilizing the same objects and methods. It should be a measure of how easy it will be in the future to make changes to the code in later stages.
17. For alternative approaches to the bugfix or implementation.
18. For how the code impacts other parts of the system.
19. For input validations. Appropriate client-side and server-side validations are present.
20. For new concepts and terms.
21. Many times, the code reviewer encounters new things that he’s not aware of. The code reviewer should read about that concept and see if it’s correctly implemented or not.
22. Many times, the developer writes something (maybe a method) which is not common. Check if the developer has an understanding of that method correctly or not. Sometimes, the code is just a result of Google search without the knowledge of what that line of code does.
23. For standardization
    1. Many times, we add some code to the project which can also be added to the boilerplate code (in our WP themes, plugins, Laravel packages, etc). See if something like that exists and report the developer to create a Pull Request to the package repository as well.
24. For increasing file sizes.
25. Does the new code increase the file size significantly? Can it be divided into concepts like Event/Listeners or can be moved to another file?
26. For correct file directory.
27. Check whether the file in-review is placed at the right directory. The location of a file should be easy to guess from the file name/type.
