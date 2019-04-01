* Intro
    - mostly focused on understanding and concepts
    - large community, good for stackoverflow
        --> good question: initialize something
        --> bad question: if you don't know what to ask to proceed

* Which programming languages do you know?
    - R, Python, C, C++, Scala, logo, Java, Turbopascal, Julia, Smalltalk,
      Whitespace


How to make code beautiful
How to make code beautiful
How to make code beautiful
What is Beautiful Code?  --> **let's google it**
What is Beautiful Code?
What is Beautiful Code?
What is Beautiful Code?

BTW Google's AI puts "nature" as first keyword, but the third "makeup" seems to be more relevant for selecting the pictures shown by default.

What is Beautiful Code?
What is Beautiful Code?
What is Code?
What is Code?
What is Code?
What is Code?
What is Code?
What is Code?
Why to write Beautiful Code?
Why to write Beautiful Code?
How to write Beautiful Code? Naming!
How to write Beautiful Code? Naming!
How to write Beautiful Code? Naming!
How to write Beautiful Code? Naming!
How to write Beautiful Code? Named containers!
How to write Beautiful Code? Naming!
How to write Beautiful Code? Naming!
How to write Beautiful Code? Naming!
How to write Beautiful Code? Naming!

    "This is valid Python code! Can anybody imagine how this works?"

How to write Beautiful Code? Naming!
How to write Beautiful Code? Pattern!
Break the problem into smaller blocks

    - Break the problem into smaller blocks, use them to construct larger blocks.

    - Each block can be complicated inside, but need to have a clear interface which allows to connect them.

Stateless Blocks

    - If we know what the block does, we don't need to care about it's implementation as long as each input gives an deterministic output, i.e. the output depends only on the input and not on some other state ("stateless").

    - Smaller blocks represent the low level abstraction, larger blocks of smaller blocks are the high level abstraction. Low level is closer to the hardware and allows a more fine grained control. High level is easier ind simpler and closer to the problem definition.
    - If we know input and output and what the block does, it can be used without caring about the inside.
    - We can use the abstraction to forget about things and concentrate on other parts.
    - It can be tested and debugged easier. Refactored easier.
    - If the output does not depend only on its input, but one some other state (not stateless!), things get more complicated.
        - How to test and debug it? We need to look at more code at once.
    - Pieces of code are more entangled.
    - That's also what makes working with data more complicated than normal software programming (you have to manage the data (state!), not only the routines which handle data).

    - A good abstraction has different layers, higher layers use only lower layers. Therefore cyclic dependencies are avoided automatically.

Why Python?
Why Python?
Why Python?
Why Python?
Why Python?
PEP 8
PEP 8
PEP 8
PEP 8
Questions?
PEP 8: Exercise

---> 10:05

Everything is an Object
Everything is an Object
Everything is an Object
Everything is an Object
Everything is an Object
Everything is an Object: Assignment and Modification
Everything is an Object: Assignment and Modification
Everything is an Object: Assignment and Modification
Everything is an Object: Assignment and Modification
Everything is an Object: Assignment and Modification
Everything is an Object: Copy an object
Everything is an Object: Classes
Everything is an Object: Classes
Everything is an Object: Classes
Everything is an Object: Classes
Everything is an Object: Classes
Everything is an Object: Classes
Everything is an Object: Overloading operators
Everything is an Object
Everything is an Object
Everything is an Object
Everything can be modified
Everything can be modified: But why?
Really everything can be modified?
Immutable types and the traps of mutability
Immutable types and the traps of mutability
Immutable types and the traps of mutability
Scope: Packages, Modules, Classes and Functions
Scope: Packages, Modules, Classes and Functions
Scope: Packages, Modules, Classes and Functions
Scope: Packages, Modules, Classes and Functions
Scope: Packages, Modules, Classes and Functions
Scope: Packages, Modules, Classes and Functions
Scope: Packages, Modules, Classes and Functions
Scope: Packages, Modules, Classes and Functions
Scope: Packages, Modules, Classes and Functions
Scope: Packages, Modules, Classes and Functions
Imports
Questions?
Exercise:

---> 10:40

Exceptions and tracebacks
Exceptions and tracebacks
Exceptions and tracebacks
Exceptions and tracebacks
Exceptions and tracebacks
Debuggers
Let's debug something!
Let's debug something!
Let's debug something!
Debugger commands
Questions?

---> 11:15

Exercise: debug something!
Tests
Tests: Example
Tests: Example
Tests: test runner
Tests: doctest
Tests: Continuous Integration
Tests: libraries
Tests: corner cases
Tests: corner cases
Tests: corner cases

    https://travis-ci.org/lumbric/lunchbot
    https://github.com/lumbric/lunchbot

Questions?
Tests: Exercise

--> 11:50

Logging
Tips & Tricks
Tips & Tricks: IPython
Gotchas: Truthiness (1)
Gotchas: Truthiness (2)
Gotchas: Truthiness (2)
Gotchas: Tuples (1)
Gotchas: Tuples (2)
Gotchas: Tuples (3)
Gotchas: Tuples (summary)
References

--> 12:25
