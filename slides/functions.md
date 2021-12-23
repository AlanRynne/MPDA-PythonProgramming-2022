---
author: MPDA'22
title: Functions
date: December 23, 2021
theme: white
transition: convex
highlight: breezedark
css: "../../assets/css/revealCustom.css"
---

# What is a function?

---

A function is a block of code which only runs when it is _called_.

> _Calling a function_ just means to use a function in your code.

---

We've been using funcions during **the entire course**:

```
range(3,9)
math.cos(2*math.pi)
math.sin(math.pi)
abs(-1)
ptA.DistanceTo(ptB)
interval.ParamterAt(0)
curve.ClosestPoint(ptA)
```

You can pass data, known as _parameters_, into a function.

A function _can_ **return data** as a result.

---

You have been using functions all along the course.

```python
pt = rg.Point3d(0,0,0)
cross = rg.Vector3d.CrossProduct(rg.Vector3d.ZAxis, rg.Vector3d.YAxis)
surf = rg.Surface.CreateByCorners(...)
```

## Creating a function

You can create a function by using the `function`, followed by the name and the inputs surrounded by parenthesis.

```python
def myFunction():
    print("Hello from inside myFunction!")
```

Inside the indented block you can add any code you wish.

---

And use it like this:

```python
myFunction()
```

---

A function can optionally have _input_ parameters (variables)

These parameters can be of **any type**.

```python
def addNumbers(a,b):
    addition = a + b
    print(addition)

# And use it placing the values inside the parenthesis
addNumbers(4, 2.3)
```

---

A function can also **return data**

```python
def addNumbers(a,b):
    addition = a + b
    return addition

result = addNumbers(3,44)
print(result)
```

The return value can be saved into a variable for later use.

# Why should you use them?

Functions are useful in many ways:

- to abstract the logic into understandable pieces.
- to **re-use** code in multiple parts of your application.
- to simplify the logic of your application

---

Essentially, a **python function** is the equivalent of a **grasshopper node**:

- They each have independent inputs that **can vary**
- They each perform a specific operation, and have a descriptive name.

There's only one main difference between them:

**A python function can only have one `return` value**

---

### What does _having only one return value?_ even mean?

It means that the result of any function has to be **a single item** (or no item at all).

If you need to output more than one item, you can output a **list**/**tupple** or **dictionary** that collects the multiple items you want to send.

# Recursivity

---

## What is recursivity?

According to wikipedia, _recursive_ is something that involves the **repeated** application of a rule, definition, or procedure to **successive results**.

## 🤔 🤔 🤔

---

In other words:

Recursive is any operation that you **repeat over and over** using the result from the **previous iteration**.

---

In programming, a function is _recursive_ if it **calls itself**.

```python
def power(num, exp):
    if(exp == 1):
        return num
    return num  * power(num, exp - 1)
```

---

```python
def countdown(start):
    if(start != 0):
        print(start)
        countdown(start - 1)
    else:
        print("BOOM!")
```

Meaning, that inside the function's code you are using the same function you are creating.

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
