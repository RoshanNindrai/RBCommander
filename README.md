RBCommander
============
Command are used to remove all of the business logic that goes inside ViewController to their respective commands and handlers.

The Command
============

A command is a DTO that carries the instruction needed to perform a specific business login.

The CommandHandler
============

The command handler uses the Command DTO object and performs a set of operations over or along the object. The CommandHandler conforms to RBHandlerProtocol

The CommandBus
============

The command bus uses the command translator to map a specific command to its handler class, and executes commands that are issues to it.

Note
============

By default, the command bus will do a quick search and replace on the name of the command class to figure out which handler class to use for example

LoginCommand => LoginCommandHandler


SAMPLE PROJECT
============

The demo project gives a overall insight on how to uses the commander pattern.

Lincense
============

RBCommander is available under The MIT License (MIT)

Copyright (c) 2014 Roshan Balaji

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
