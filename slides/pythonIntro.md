---
author: MPDA'21
title: Python Intro
date: October 14, 2021
theme: white
transition: convex
highlight: breezedark
css: "../../assets/css/revealCustom.css"
---

# What is Programming?

> Programming is a way to “instruct the computer to perform various tasks”.

## `'instruct the computer'`?

It means that you privide the computer with a set of instructions in a language it can understand.

That language, in our case, will be `python`

## `'perform various tasks'`?

A task could be anything. For example:

:::incremental

- Calculating simple interest, given principal, rate and time.
- Calculate the trayectory of a missile
- Create complex 3D objects, animation, etc.

:::

# What is `Python`?

![](../../assets/img/python-code.jpg){width=50%}

---

Python is an _object-oriented_ programming language, first developed in 1980.

It has become extremelly popular in recent years due to its ease of use.

---

_object oriented_ means that the language is structured around `objects`, which are also called `classes`:

- Each `class` _contains_ (or _encapsulates_) a specific functionality.
- A class may _inherit_ functionality from it's parent class.
  - This makes the language extremelly extendable.

---

![](../../assets/img/inheritance-multi-level.png){width=100%}

---

![](../../assets/img/inheritance-shapes.jpeg){width=70%}

---

During this semester, we'll be making this two questions a lot:

- What _**is**_ an specific object?
  - Is this **object** a _point_? Is this **object** a _mesh_?
- What does a specific object **have**?
  - Does a **shape** have an _area_?
  - Does a **rectangle** have a _length_?

# `Python` structure

:::incremental

1. Comments
2. Variables
3. Functions
4. Classes
5. Libraries

:::

## Comments

```python
# This is a comment
```

Comments are just text, they do not affect our code in any way.

They are used to include detailed instructions or clarifications in our code.

Comments in `Python` always start with a _hashtag_ `#`

## Variables

```python
x = 10
name = "Alan"
```

Variables store information to be referenced and used by programs.

They also provide a way of **labeling data** with a descriptive name.

---

## Computed variables

```python
x = 10
y = 3
z = x + y
```

Computed variables have values that are the result of an operation.

This operation can be very simple (like a sum), or extremelly complex.

## Functions

```python
def FullName(name, surname):
    return name + surname
```

Functions (also called methods sometimes), _encapsulate_ a specific functionality in a specific name.

This allows you to _reuse_ the same logic in different parts of your program.

Functions can have many inputs, but only one output called the **return value** of the function

## Classes

```python
class Person:
    name = "Alan"
    surname = "Rynne"

    def FullName(name, surname):
        return name + " " + surname
```

Classes contain variables and methods(functions), that are related to the same concept.

## Libraries

```python
import math
import Rhino.Geometry as RG
```

Libraries are a collection of classes defined by a given name and have to be _imported_ into your script.

- The `math` library contains many usefull functions like `sin()` or `cos()`
- The `Rhino` library contains everything _Rhino_ related

# Built-in classes

Python already comes with some basic classes, which are usually refered to as _data-types_.

These _data-types_ contain the most basic of functionality

---

Some basic data-types are:

|   Type   |   Name    |     Example     |
| :------: | :-------: | :-------------: |
|  `int`   |  Integer  |       `5`       |
| `double` |  Double   |    `1.0435`     |
|  `bool`  |  Boolean  | `True`, `False` |
|  `str`   |  String   |  `"Just text"`  |
|  `char`  | Character |      `'a'`      |

---

Other more complex data-types include _collections_:

| Type |    Name    |         Example         |
| :--: | :--------: | :---------------------: |
| `[]` |    List    |       `[1,4,5,8]`       |
| `()` |   Tuple    | `("Alan","Programmer")` |
| `{}` | Dictionary | `{1:"Steve", 2:"Bill"}` |

# Rhino classes

We will be using many `Rhino` classes during this course. Mainly the ones under `Rhino.Geometry`

```python
import Rhino.Geometry as RG
```

---

Some of the most popular ones will be

|      Type      |      Name      |       Example       |
| :------------: | :------------: | :-----------------: |
|   `Point3d`    |    3D Point    |   `RG.Point3d()`    |
|   `Vector3d`   |   3D Vector    |   `RG.Vector3d()`   |
|   `Polyline`   |    Polyline    |   `RG.Polyline()`   |
|  `NurbsCurve`  |    3D Curve    |  `RG.NurbsCurve()`  |
|     `Mesh`     | Polygonal Mesh |     `RG.Mesh()`     |
| `NurbsSurface` | Nurbs Surface  | `RG.NurbsSurface()` |

# How?

---

We will be using the `GHPython` component

![](../../assets/img/ghpython-component-detail.png){width=65%}

---

And [**VSCode**](https://code.visualstudio.com) further in the course

![](../../assets/img/vscode-python-rhino.png){width=65%}

# Resources

## Generic resources

1. [Rhino Developer Docs](https://developer.rhino3d.com/guides/)
2. [RhinoCommon API](https://developer.rhino3d.com/api/RhinoCommon/html/R_Project_RhinoCommon.htm)
3. [Python for Non-Programmers](https://wiki.python.org/moin/BeginnersGuide/NonProgrammers)

## Rhino/GH resources

- [RhinoPython Primer](https://www.rhino3d.com/download/ironpython/5.0/rhinopython101)
- [Code of Space](https://codeofspace.com/tutorials/)
- [Designalyze](http://designalyze.com/course/intro-scripting-python-rhino)
- [Rhino Python Samples](https://developer.rhino3d.com/samples/#rhinopython)
