# Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Schedule

* 09.30 - 14.00.  Work **solo** to implement the bank account requirements and acceptance criteria in Ruby.  Have breaks whenever you like.

* 14.00 - 14.20.  Review your own code.  Look for places it could be refactored.

* 14.20 - 15.00.  Refactor your code.

* 15.00 - 15.30.  Read through and understand Leo's solution.  (Message to the coach: Leo's solution is linked from [here](https://github.com/makersacademy/course-design/blob/master/sequence/week12.md).)

* 15.30 - 16.30.  We'll all come together and discuss Leo's solution on the projector.

## Specification

### Requirements

* The app should run on the command line.
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
