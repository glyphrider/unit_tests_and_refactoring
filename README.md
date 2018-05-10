# Unit Tests and Refactoring

## another Erlang lesson

I saw a tweet from Doc the other day... ["If you've skipped unit tests because you plan to refactor the code soon, you might not understand refactoring (or unit tests)."](https://twitter.com/DocOnDev/status/993899650489954304), and it reminding me of something neat about [Erlang](https://www.erlang.org).
Erlang, specifically [EUnit](https://erlang.org/doc/apps/eunit/chapter.html), lets you create two different scopes of unit tests. You can create your tests _inside_ the code module, or in an external module named _module-name_tests. The difference is initially subtle. It's not just a way to organize your code and tests; the existence of unit tests outside the module means they have to adhere to the rules governing the visiblity of functions. External unit tests can _only_ test the exported _interface_ of your module.

Why is this important?

Well, when you refactor code, the interface behaviors should remain constant. But the myriad of tests written to test-drive your development of the implementation are strongly tied to the code you are throwing away... er, _refactoring_.
