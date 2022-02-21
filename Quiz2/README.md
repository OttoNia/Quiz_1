# Quiz 2: my classy robot children

Starter pack for EECS 1720 Quiz 2. Probably you should start by reading this first...

## Initialize

So. Your repo should look like this. Pay attention!!!

1. To the location (`robots-make-art-too/firstname_lastname`)
2. To the structure (`you'll want to put this Quiz 2 folder into your _Quizzes_ folder`)

See this image for reference:

![image](/Code/references/repo.png "This is what your repo should look like")

## Contents

In your `Quiz 2` package you have the following directories, where `root` is `Quiz_2-where-my-classy-children-at`:

- root/------------------| README.md, STATEMENT.md
- root/Code/------------| general container
- ~root/Code/p5jsQ2/----| `p5js` content~
- root/Code/pydeQ2/---| `python`-mode content
- root/Code/references/-| functions and content to use

So, as you can imagine, ~`p5jsQ2/` will contain template `JavaScript` where you will add _some_ `p5js`, and~ `pydeQ2/` will contain template `python` where you will add _more than some_ `python`.

~Any `p5js` libraries are provided, and~ you _should_ already have any processing `python` mode libraries installed _from before_ (otherwise you should probably install them now).

Inside ~both~ the ~`p5jsQ2/` and~ `pydeQ2/` folder is a `data` folder. If you need to save anything like (e.g., images, texts, files) - save it _in there_.

---

### Things to remember

1. ~Check the `index.html` file and be sure it is loading the correct JavaScript file.~
2. Check that your `python`-mode processing folder (currently `pydeQ2`) matches the name of your processing sketch file.
3. Are you using the correct version of processing?
4. Have you installed or loaded any libraries you need? (Including python mode?)
5. Be sure to tell me all about your personal choices, and why, in the STATEMENT.md file.
6. This [link](https://py.processing.org/reference/createShape.html) could be totally useful - but all you really need is in the `reference/` docs.

---

## BIG PICTURE

There is a robot family. Somehow they are a multi-generational family all living together. I don't remember all their names so you'll have to find a way to identify them individually. They _kind-of_ look alike, but I'm not sure which robot children belong to which robot parents... or if some are grand-children or grand-parents!! Need your help sorting this out. We don't have _alot_ of time because they have to leave Sunday.
>
> Your mission is to find out who is who, what they look like, and what they can do. Just in case they leave early, you'll have to _draw_ them to the screen and save it as a photo, `classy-robot-family.png`. I want to put it in my digital photo album. You might want to consider how you will label them, and how you will show me who is related to who, and how (maybe use text? maybe print their name to screen? or file? you could draw a line between parents and children? or maybe you draw them oldest in the center and children in front of parents? you decide!)
>

Here is what I know:

(shapewise)

- there is _at least_ 1 (one) grand-child baby robot. You could say its head was round.
- I've personally met 2 (two) sets of robot siblings; they had different shapes for heads.
- 1 (one) of the children I met shares the same head shape as 1 (one) of its parents. Both of that child's parents have head shapes that are different than that other child I met.
- there are three head shapes: triangles(), rectangles(), ellipses().
- of the three shapes, let's call them a, b, and c (might not be in the same order as above):
  - there are _at least_ 3 (three) children with shape a
  - there are _at least_ 2 (two) children with shape b
  - there are _at least_ 2 (two) parents with shape b
  - there are _no more_ than 2 (two) parents with shape c
- some of the children could be parents. Probably definitely.
- I don't know what their heirarchy is, but there is _definitely_ 1 (one) sharp robot in charge. I think it's the _oldest_... so let's call it `oldBot` (do robots age though?).
- Yes, they are all probably related in some way to `oldBot`.
- At least 4 (four) robots come from a single (1) parent (I don't think it's the _same_ single parent for _all_ of them though).

(colourwise?)

- that sharp-shooter `oldBot` only wears stripes or greyscale
- any robot that has exactly 1 (one) grand-parent and 1 (one) parent is the same colour
- if the robot has some kind of sibling, it has the same colour (but it's different from any parent)
- because my eyes are tired, I'm not sure if the shapes are outlined or not, if they _were_, I think it skips a generation

(otherwise)

- someone has a pattern
- there are more than 5 (five) robots but less than 18 (eighteen)

## LITTLE PICTURE

The tools you have to work with are the functions listed in the `Code/references/` folder and if it makes sense item 6. below gives you the processing references. Any starter code is language specific, and found in the appropriate folders. I want to take a robot family picture before they leave. So, using the hints of what I know (listed just prior), I need some help:

1. You'll have to define some classy robot `Classes`
2. I need you to find out their names (shh they think they are people, not `Objects`)
3. Figure out who is who and what shape `Attribute` they have
4. It would be interesting to know which `parent(s)` a `child` might have `Inherited` their shape from
5. How many are there? More than 1 (one). More than 2 (two). Probably many. Yep. `Polymorphism` at its best
6. OH! I almost forgot. _You have to teach_ at least 2 (two) of them a new trick. Some `Method` of doing, or being, something. Lets call it _flare_. Give the robots some _flare_! I don't care what you teach them, maybe you teach them to squeak, maybe you teach them to blush, or even move? Whatever your `Method`, make sure 2 (two) robots can do something different. Just so it stays in the family, you should probably find some way to `Encapsulate` these skills so they can be passed on to some children
   - you could find some _flare_ at the processing ~_store_~ [_website_](https://py.processing.org/reference/)
   - they have colours, sounds, and, who knows what else!
     - (maybe they react to each other or to you?)
   - something interactive, or something animated is probably the way to go
     - (l'animation c'est bien!)

---

A little hint to get you started:

```Python
babyBot = ClassyRobot(0, 'bb', ...)

def class ClassyRobot():
    def __init__(self, param, shbam, ...):
        self.param = param
        ...
    def ?:
        ...
```
