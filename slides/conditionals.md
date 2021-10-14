---
author: MPDA'21
title: Booleans & Conditionals
date: October 27, 2020
theme: white
transition: convex
highlight: breezedark
css: "../../assets/css/revealCustom.css"
---

# What is indentation?

_Indentation_ refers to the placement of text farther to the right (or left), to separate it from it's surrounding text.

---

Consider these two lines
```
This is a normal line
    This line is indented.
        This line has double indentation
```

---

Python is a programing language that is _indentation aware_.

This means that the indentation of each line has a specific meaning.

We use indentation to signal when a piece of code is _inside_ another.


---

If you insert a random space before a line of code in Python, you will get an **error**

```python
# This will throw an error ⚠️
x = 10
 y = 20

# This will run fine 👍🏼
x = 10
y = 20
```

# What are `if` statements?

## {-}

'if' statements provide a way to run a portion of code **only** if a specific _condition_ is met.

```python
if (CONDITION):
    # This indented part will only run
    # if the condition is met
```

## {-}

Conditions will always answer _YES or NO_ questions. For example:

> Is `x` smaller than `3`?

```python
x = 5
if(x < 3):
    print("X is smaller than 3")
```

## {-}

> Is `x` equals to `5`?

```python
x = 5
if(x == 5):
    print("X is equals to 5")


```

## Comparisson operators

| Operator |       Name        | Example  |
| :------: | :---------------: | :------: |
|    ==    |      Equals       | (a == b) |
|    !=    |    Not Equals     | (a != b) |
|    >     |    Bigger than    | (a > b)  |
|    <     |   Smaller than    | (a < b)  |
|    >=    | Bigger or equals  | (a >= b) |
|    <=    | Smaller or equals | (a <= b) |

## {-}

you can also specify a section of code that will run if the condition **is not** met, using the `else` keyword:

```python
x = 5
if (x < 3):
    print("X is smaller than 3")
else:
    print("X is NOT smaller than 3")
```

## {-}

concatenating several conditions is possible using the `and`/`or` keywords

```python
x = 2
y = 2
if(x < 3 and y < 4):
    print("BOTH of the conditions have been met")
if(x < 3 or y < 4):
    print("ANY of the conditions have been met")
```

## {-}

and create even more complex conditions by concatenating them using _parenthesis_ `()`:

```python
if( (x < 3 and y < 4) or (x > 6 and y > 9) ):
    print("This part will only run if:")
    print("X is smaller than 3 and Y smaller than 4")
    print("OR")
    print("X is bigger than 6 and Y is bigger than 9")
```

## {-}

The result of a condition is always a boolean `bool`, so you can save it in a variable too.

```python
first = (x< 3 and y < 4)
second = (x > 6 and y > 9)

if(first or second):
    print("The result will be the same
           as the previous example")
```

This will greatly simplify your code and make it more **_readable_**.

## {-}

you can get the oposite of value of a given condition (or boolean) with the `not()` keyword.

```python
x = 2
first = x < 5
# First = True
oppositeOfFirst = not(first)
# oppositeOfFirst = False
```

## {-}

Finally, you can _chain_ conditions together using the `elif` keyword (short for `else if`):

```python
x = 4
if (x < 4):
    print("Will print if X smaller than 4")
elif (x > 8):
    print("Will print if X is bigger than 8")
    print("IF the previous conditions = false")
else:
    print("Will print if none of the")
    print("previous conditions were true")
    print("so x >= 4 and x <= 8")
```

## {-}

When you _chain_ conditions using `if` -> `elif` -> `else`, only **ONE** of those  code blocks will run.

If several conditions are met, the first one will have preference.

## {-}

`if` statements can also be **nested** (notice the _indentation_):

```python
if (x < 4):
    if(x < 1):
        print("Smaller than 1")
    else:
        print("Between 1 and 3")
else:
    print("Bigger or equals to 4")
```

# References

## Generic resources

1. [Generic python](https://www.w3schools.com/python/default.asp)
2. [Codility Code Challenges](https://app.codility.com/programmers/lessons/1-iterations/)
3. [Rhino Developer Docs](https://developer.rhino3d.com/guides/)
4. [RhinoCommon API](https://developer.rhino3d.com/api/RhinoCommon/html/R_Project_RhinoCommon.htm)
5. [Python for Non-Programmers](https://wiki.python.org/moin/BeginnersGuide/NonProgrammers)

## Rhino/GH resources

- [RhinoPython Primer](https://www.rhino3d.com/download/ironpython/5.0/rhinopython101)
- [Code of Space](https://codeofspace.com/tutorials/)
- [Designalyze](http://designalyze.com/course/intro-scripting-python-rhino)
- [Rhino Python Samples](https://developer.rhino3d.com/samples/#rhinopython)
