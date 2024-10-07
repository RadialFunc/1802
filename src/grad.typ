#import "@local/evan:1.0.0":*

= Level curves (aka contour plots)

== [TEXT] Level curves replace $x y$-graphs

In high school and 18.01, you were usually taught to plot single-variable functions
in two dimensions, so $f(x) = x^2$ would be drawn as a parabola $y = x^2$, and so on.
You may have drilled into your head that $x$ is an input and $y$ is an output.

However, for 18.02 we'll typically want to draw pictures of functions
like $f(x,y) = x^2+y^2$ in a different way#footnote[
  This is a lot like how we drew planes in a symmetric form earlier.
  In high school algebra, you drew 2D graphs of one-variable functions
  like $y = 2 x + 5$ or $y = x^2 + 7$.
  So it might have seemed a bit weird to you that we wrote
  planes instead like $2 x + 5 y + 3 z = 7$ rather than, say, $z = (7 - 2 x - 5 y) / 3$.
  But this form turned out to be better, because it let us easily access the normal vector
  (which here is $angle.l 2, 5, 3 angle.r$).
  The analogy carries over here.
], using what's known as a _level curve_.

#definition[
  For any number $c$ and function $f(x,y)$
  the level curve for the value $c$ is the plot of points for which $f(x, y) = c$.
]

The contrast to what you're used to is that:

- In high school and 18.01, the variables $x$ and $y$ play different roles,
  with $x$ representing the input and $y = f(X)$ representing output.
- In 18.02, when we draw a function $f(x,y)$
  both $x$ and $y$ are inputs; we treat them all with equal respect.
  Meanwhile, the _output_ of the function does _not_ have a variable name.
  If we really want to refer to it, we might sometimes write $f = 2$ as a shorthand
  for "the level curve for output $2$".

To repeat that in table format:
#figure(
  table(
    columns: 2,
    align: left,
    table.header([18.01 $x y$-graphs], [18.02 level curves]),
    [$x$ is input], [Both variables are inputs],
    [$y$ is output], [No variable name for output],
  ),
  kind: table
)

We give some examples.

#example(title: [Example: the level curves of $f(x,y) = y - x^2$])[
  To draw the level curves of the function $f(x, y) = y - x^2$,
  we begin by recalling that a level curve corresponds to a set of points $(x, y)$
  such that the function takes on a constant value, say $c$.
  For our function, this becomes:
  $ y - x^2 = c $
  which rearranges to
  $ y = x^2 + c. $
  This is an equation in 18.01 form, where $y$ is a function of $x$,
  so you can draw it easily.
  This equation represents a family of parabolas, each corresponding to a different value of $c$.
  As $c$ varies, the level curves are parabolas that shift upward or downward along the $y$-axis.
  The shape of these curves is determined by the quadratic term $x^2$,
  which indicates that all level curves will have the same basic "U" shape.

  #figure(
    image("figures/grad-levelcurve1.png"),
    caption: [The level curves of $f(x,y) = y-x^2$.],
  )
]

#example(title: [Example: the level curves of $f(x,y) = x - y^2$])[
  Let's draw level curves for $f(x,y) = x-y^2$.
  This example is exactly like the previous one, except the roles of $x$ and $y$ are flipped.

  #figure(
    image("figures/grad-levelcurve2.png"),
    caption: [The level curves of $f(x,y) = x-y^2$.],
  )
]

#example(title: [Example: the level curves of $f(x,y) = x^2+y^2$])[
  Let's draw level curves of $f(x,y) = x^2+y^2$
  For each $c$ we want to sketch the curve
  $ x^2 + y^2 = c. $
  When $c < 0$, no points at all appear on this curve, and when $c = 0$
  the only point is the origin $(0,0)$.
  For $c > 0$ this equation represents a family of circles centered at the origin $(0, 0)$,
  with radius $sqrt(c)$.
  For example:

  - No points work for $c < 0$.
  - For $c = 0$, the level curve is the single point $(0,0)$.
  - For $c = 1$, the level curve is a circle with radius $1$.
  - For $c = 4$, the level curve is a circle with radius $2$.
  - For $c = 9$, the level curve is a circle with radius $3$.

  As $c$ increases, the circles expand outward from the origin.
  These concentric circles represent the level curves of the function $f(x, y) = x^2 + y^2$.

  #figure(
    image("figures/grad-levelcurve3.png"),
    caption: [Four of the level curves for $f(x,y) = x^2+y^2$.],
  )
]

#example(title: [Example: the level curves of $f(x,y) = |x| + |y|$])[
  Let's draw level curves of $f(x,y) = |x| + |y|$.
  To draw the level curve for $c$, we are looking at
  $ |x| + |y| = c. $

  Like before, if $c < 0$ there are no pairs $(x,y)$ at all and for $c = 0$ there is only a single point.

  This equation represents a family of polygons.
  Specifically, for a given value of $c$,
  the set of points that satisfy this equation form a diamond shape centered at the origin.
  Indeed, in the first quadrant (where the absolute values don't do anything)
  it represents the line segment joining $(0,c)$ to $(c,0)$.

  So for example,

  - When $c < 0$, there are no points.
  - For $c = 0$, the level curve is just the point $(0,0)$.
  - For $c = 1$, the level curve is a diamond with vertices at $(1, 0)$, $(-1, 0)$, $(0, 1)$, and $(0, -1)$.
  - For $c = 2$, the level curve is a larger diamond with vertices at $(2, 0)$, $(-2, 0)$, $(0, 2)$, and $(0, -2)$.
  - For $c = 3$, the diamond expands further, with vertices at $(3, 0)$, $(-3, 0)$, $(0, 3)$, and $(0, -3)$.

  As $c$ increases, the diamonds expand outward, maintaining their shape but increasing in size.
  Each level curve is a square rotated by 45 degrees.

  #figure(
    image("figures/grad-levelcurve4.png"),
    caption: [Four of the level curves for $f(x,y) = |x|+|y|$.],
  )
]

== [RECIPE] Drawing level curves

Despite the fact this section is labeled "recipe", there isn't an
easy method that works for every function.
*You have to do it in an ad-hoc way depending on the exact function you're given*.
For many functions you'll see on an exam, it'll be pretty easy.

To summarize the procedure,
given an explicit function like $f(x,y)$ and the value of $c$,
one tries to plot all the points $(x,y)$ in space with $f(x,y) = c$.
We gave three examples right above, where:

- The level curves of $f(x,y) = y-x^2$ were easy to plot because
  for any given $c$, the equation just became an $x y$-plot like in 18.01.
- The level curves of $f(x,y) = x-y^2$ were similar to the previous example,
  but the roles of $x$ and $y$ were flipped.
- To draw the level curves of $f(x,y) = x^2+y^2$,
  you needed to know that $x^2 + y^2 = r^2$ represents a circle of radius $r$
  centered at $(0,0)$.
- To draw the level curves of $f(x,y) = |x| + |y|$,
  we had to think about it an ad-hoc manner where we worked in each quadrant;
  in Quadrant I we figured out that we got a line,
  and then we applied the same image to the other quadrants
  to get diamond shapes.

So you can see it really depends on the exact $f$ you are given.
If you wrote a really nasty function like $f(x,y) = e^(sin x y) + cos(x + y)$,
there's probably no easy way to draw the level curve by hand.

== [TEXT] Level surfaces are exactly the same thing, with three variables instead of two

Nothing above really depends on having exactly two variables.
If we had a three-variable function $f(x,y,z)$,
we could draw _level surfaces_ for a value of $c$
by plotting all the points in $RR^3$ for which $f(x,y,z) = c$.

#example(title: [Example: Level surface of $f(x,y,z) = x^2+y^2+z^2$])[
  If $f(x,y,z) = x^2 + y^2 + z^2$,
  then the level surface for the value $c$ will be a sphere with radius $sqrt(c)$ if $c >= 0$.
  (When $c < 0$, the level surface is empty.)
]

#example(title: [Example: Level surface of $f(x,y,z) = x + 2 y + 3 z$])[
  If $f(x,y,z) = x + 2 y + 3 z$,
  all the level surfaces of $f$ are planes in $RR^3$,
  which are parallel to each other with normal vector $vec(1,2,3)$.
]

== [EXER] Exercises

For some practice with level curves, try to draw 2-D level curves
for some values for the following functions:

- $f(x,y) = 5 x + y$
- $f(x,y) = x y$
- $f(x,y) = max(x,y)$ (i.e.~$f$ outputs the larger of its two inputs,
  so $f(3,5)=5$ and $f(2,-9)=2$, for example).

#pagebreak()

= Partial derivatives

== [TEXT] The point of differentiation is linear approximation

In 18.01, when $f : RR -> RR$, you defined a *derivative* $f'(p)$ at each input $p in RR$,
which you thought of as the *slope* of the *tangent line* at $p$.
Think $f(5.01) approx f(5) + f'(5) dot 0.01$.
This slope roughly tells you, if you move a slight distance away from the input $p$,
this is how fast you expect $f$ to change.
To drill the point home again, in 18.01, we had
$ f(p + epsilon) = f(p) + f'(p) dot epsilon. $
See figure below.

#figure(
  image("figures/grad-slope.png", width: auto),
  caption: [The slope $f'(p)$ tells you how quickly $f$ changes near $p$.],
)

The 18.01 derivative had type "scalar".
But for a _two-variable_ function, that's not enough.
For concreteness, let's take
$ f(x,y) = x^2+y^2 $
as our example function (for which we have drawn level curves before),
and consider some point $P = (3,4)$, so that $f(3,4) = 25$.

Then, what would a point "close" to $(3,4)$ mean?
The point $(3.01,4)$ is close, but so is $(3,4.01)$.
For that matter, so is $(3.006, 4.008)$ --- that's also a point at distance $0.01$ away!
So having a single number isn't enough to describe the rate of change anymore.

For a two-variable function, we would really want _two_ numbers, in the sense that
we want to fill in the blanks in the equation
$ f(3 + epsilon_x, 4 + epsilon_y) approx 25
  + ("slope in" x"-direction") dot epsilon_x
  + ("slope in" y"-direction") dot epsilon_y. $

#idea[
  For an $n$-variable functions, we have a rate of change in _each_ of the $n$ directions.
  Therefore, *we need $n$ numbers and not just one*.
]

The first blank corresponds to what happens if you imagine $y$ is held in place at $4$,
and we're just changing the $x$-value to $3.01$.
The second blank is similar.
So we need a way to calculate these; the answer to our wish is
what's called a _partial derivative_.

== [TEXT] Computing partial derivatives is actually just 18.01

The good news about partial derivatives is that *they're actually really easy to calculate*.
You pretty much just need to do what you were taught in 18.01
with one variable changing while pretending the others are constants.

Here's the definition:

#definition[
  Suppose $f(x,y)$ is a two-variable function.
  Then the _partial derivative with respect to $x$_, which we denote either $f_x$
  or $(partial f) / (partial x)$,
  is the result if we differentiate $f$ while treating $x$ as a variable $y$ as a constant.
  The partial derivative $f_y = (partial f) / (partial y)$ is defined the same way.

  Similarly, if $f(x,y,z)$ is a three-variable function,
  we write $f_x = (partial f) / (partial x)$ for the derivative when $y$ and $z$ are fixed.
]

#typesig[
  Each partial derivative has the same type signature as $f$.
  If $f : RR^n -> RR$ is a function
  then the partial derivative $(partial f) / (partial x) = f_x$
  has the same type signature of $f$:
  it accepts points in $RR^n$ and outputs real numbers.
]

But that's a lot of words.
I think this is actually better explained by example.
In fact you could probably just read the examples and ignore the definition above.

#example(title: [Example: partial derivatives of $f(x,y) = x^3 y^2 + cos(y)$])[
  Let $f(x,y) = x^3 y^2 + cos(y)$.

  Let's compute $f_x$.
  Again, pretend $y$ is a constant, so look at the function
  $ x |-> y^2 dot x^3 + cos(y). $
  If we differentiate with respect to $x$, then $x^3$ becomes $3x^2$,
  and $cos(y)$ goes to $0$ (it doesn't have any $x$ stuff in it).
  So
  $ f_x = y^2 dot 3x^2. $

  Similarly, let's compute $f_y$.
  This time we pretend $x$ is a constant, and look at
  $ y |-> x^3 dot y^2 + cos(y). $
  This time $y^2$ becomes $2y$, and $cos(y)$ has derivative $-sin(y)$. So
  $ f_y = x^3 dot 2y - sin(y). $
]

#example(title: [Example: partial derivatives of $f(x,y,z) = e^(x y z)$])[
  Let $f(x,y,z) = e^(x y z)$ for a three-variable example.
  To compute $f_x$, think of the function
  $ x |-> e^(y z dot x) $
  where we pretend $y$ and $z$ are constants.
  Then the derivative is with respect to $x$ is just $y z e^(y z dot x)$
  (just like how the derivative of $e^(3 x)$ is $3 e^x$). In other words,
  $ f_x (x,y,z) = y z dot e^(x y z). $
  For analogous reasons:
  $
    f_y (x,y,z) &= z x dot e^(x y z) \
    f_z (x,y,z) &= x y dot e^(x y z).
  $
]

#example(title: [Example: partial derivatives of $f(x,y) = x^2 + y^2$ and linear approximation])[
  Let's go back to
  $ f(x,y) = x^2+y^2 $
  which we used in our earlier example as motivation, at the point $P = (3,4)$.

  Let's fill in the numbers for the example $f(x,y) = x^2+y^2$ we chose.
  By now, you should be able to compute that
  $
  f_x (x,y) &= 2x \
  f_y (x,y) &= 2y \
  $

  Now, let's zoom in on just the point $P = (3,4)$.
  We know that
  $
  f(P) = 3^2 + 4^2 = 25 \
  f_x (P) = 2 dot 3 = 6 \
  f_y (P) = 2 dot 4 = 8.
  $
  So our approximation equation can be written as
  #eqn[
    $ (3 + epsilon_x)^2 + (4 + epsilon_y)^2 approx 25 + 6 epsilon_x + 8 epsilon_y. $
    <example-circle-3-4>
  ]
  If you manually expand both sides, you can see this looks true.
  The two sides differ only by $epsilon_x^2$ and $epsilon_y^2$,
  and the intuition is that if $epsilon_x$ and $epsilon_y$ were small numbers,
  then their squares will be negligibly small.

  We'll return to @example-circle-3-4 later when we introduce the gradient.
]

== [RECIPE] Computing partial derivatives

You probably can already figure out the recipe from the sections above,
but let's write it here just for completeness.

#recipe(title: [Recipe for calculating partial derivatives])[
  To compute the partial derivative of a function $f(x,y)$ or $f(x,y,z)$
  or $f(x_1, ..., x_n)$ with respect to one of its input variables,

  1. Pretend all the other variables are constants,
    and focus on just the variable you're taking the partial derivative to.
  2. Calculate the derivative of $f$ with respect to just that variable like in 18.01.
  3. Output the derivative you got.

  This is easy, and only requires 18.01 material.
]

We just saw three examples where we computed the partials for $f(x,y) = x^3 y^2 + cos (y)$,
$f(x,y,z) = e^(x y z)$, and $f(x,y) = x^2+y^2$.

Here are a bunch more examples that you can try to follow along:

#todo[Insert a bunch of examples here]

== [EXER] Exercises

#todo[Generate a bunch of boring exercises]

#pagebreak()

= The gradient

The gradient of $f : RR^n -> RR$, denoted $nabla f$,
is the single most important concept in the entire "Multivariable differentiation" part.
Although its definition is actually quite easy to compute,
I want to give a proper explanation for where it comes from.

Throughout this section, remember two important ideas:

- The goal of the derivative is to approximate a function by a linear one.
- Everything you used slopes for before, you should use normal vectors instead.

If you want spoilers for what's to come, see the following table.

#figure(
  table(
    columns: 3,
    align: left,
    table.header([Thing], [18.01], [18.02]),
    [Input], [$f: RR -> RR$], [$f: RR^n -> RR$],
    [Output], [$f': RR -> RR$], [$nabla f: RR^n -> RR^n$],
    [Think of as], [Slope (rise/run)], [Measures change in _each_ of $n$ directions],
    [Approximation], [Multiply by small run], [Dot product with small displacement],
    [Picture], [Slope of tangent in $x y$-graph], [Normal vector to tangent of level curve]
  ),
  kind: table,
  caption: [How to think of $nabla f$ for multivariable functions,
    compared to the derivative in 18.01.]
)

To summarize the idea behind this section, I would say just remember that:

== [TEXT] The gradient rewrites linear approximation into a dot product

In 18.01, when $f : RR -> RR$ was a function and $p in RR$ was an input,
we thought of the single number $f'(p)$ as the slope to interpret it geometrically.
Now that we're in 18.02, we have $n$ different rates of change,
but we haven't talked about how to think of it geometrically yet.

It turns out correct definition is to take the $n$ numbers and make them into a vector.
Bear with me for just one second:

#definition[
  If $f(x,y)$ is a two-variable function (so $f : RR^2 -> RR$),
  the *gradient* of $f$, denoted $nabla f$, is the function $RR^2 -> RR^2$ obtained by
  taking the two partial derivatives as the coordinates:

  $ nabla f(x,y) = vec(f_x (x,y), f_y (x,y)). $

  The case of $n$ variables is analogous;
  for example if $f(x,y,z)$ is a three-variable function, then
  $ nabla f(x,y,z) = vec(f_x (x,y,z), f_y (x,y,z), f_z (x,y,z)). $
]

#typesig[
  The types are confusing here. To continue harping on type safety:

  - Suppose $f : RR^2 -> RR$ accepts *points* in $RR^2$ and outputs *scalars* in $RR$.
  - Then $nabla f : RR^2 -> RR^2$ accepts *points* in $RR^2$ and outputs *vectors* in $RR$.

  Keep the distinction between points and vectors in mind when drawing pictures.
  We'll always draw points as dots, as arrows.
]

The reason for defining this gradient is that it lets us do
linear approximation with a *dot product*,
and consequently dot products are going to be super important throughout this section.
Let me show you how.
Let's go back to our protagonist
$ f(x,y) = x^2+y^2 $
at the point $P = (3,4)$.
Way back in @example-circle-3-4 (on #pageref(<example-circle-3-4>)),
we computed $f_x (P) = 2 dot 3 = 6$ and $f_y (P) = 2 dot 4 = 8$
and used it to get the approximation
$
  f(P + angle.l epsilon_x, epsilon_y angle.r)
  &= f(angle.l 3,4 angle.r + angle.l epsilon_x, epsilon_y angle.r) \
  &= (3 + epsilon_x)^2 + (4 + epsilon_y)^2 approx 25 + 6 epsilon_x + 8 epsilon_y. $

Now the idea that will let us do geometry is to replace the pair of numbers
$epsilon_x$ and $epsilon_y$ with a single "small displacement" vector
$bf(u) = vec(epsilon_x, epsilon_y)$,
and the pair of numbers $6$ and $6$
with the vector $vec(6,8)$ instead,
so that *the approximation part just becomes a dot product*:
$ f(vec(3,4) + bf(u)) approx f(vec(3,4)) + vec(6,8) dot bf(u). $

In full abstraction, we can rewrite linear approximation as:
#memo[
  Linear approximation asserts that if $f$ is differentiable at a point $P$,
  then for small displacement vectors $bf(u)$ we should have
  $ f(P + bf(u)) approx f(P) + nabla f(P) dot bf(u). $
]
Up until now, all we've done is rewrite the earlier equation with a different notation;
so far, nothing new has been introduced.
Why did we do all this work to use different symbols to say the same thing?

The important idea is what I told you a long time ago:
*anything you used to think of in terms of slopes, you should rethink in terms of normal vectors*.
It turns out that to complete the analogy to differentiation,
the normal vector is going to be that gradient $nabla f(P)$,
and we'll see why in just a moment (spoiler: it's because of the dot product).
For now, you should just know that $nabla f(P)$ is _going to be_ the right way to draw pictures
of all $n$ rates of change at once, although I haven't explained why yet.

Before going on, let's write down the recipes and some examples
just to make sure the _definition_ of the gradient makes sense,
then I'll explain why the gradient is the normal vector we need to complete our analogy.

== [RECIPE] Calculating the gradient

#recipe(title: [Recipe for calculating the gradient])[
  1. Compute every partial derivative of the given function.
  2. Output the vector whose components are those partial derivatives.
]

#todo[examples...]


== [RECIPE] Linear approximation

We actually could have stated an equivalent recipe right after we
defined partial derivatives,
but conceptually I think it's better to think of everything in terms of the gradient.

#recipe(title: [Recipe for calculating the gradient])[
  To do linear approximation of $f(P + bf(u))$ for a small displacement vector $bf(u)$:

  1. Compute $nabla f (P)$, the gradient of $f$ at the point $P$.
  2. Take the dot product $nabla f(P) dot bf(u)$ to get a number, the approximate change.
  3. Output $f(P)$ plus the change from the previous step.
]

#todo[examples...]

== [TEXT] Gradients are normal vectors

== [RECIPE] Computing tangent lines/planes to level curves/surfaces

#recipe[
  To find the tangent line/plane to a level curve/surface of a function $f$ at point $P$:

  1. Compute the gradient $nabla f$. This is a normal vector,
    so it tells you the left-hand side for the equation of the line/plane.
  2. Adjust the right-hand side so it passes through $P$.
]

#todo[examples...]

== [TEXT] Gradient descent, and directional derivatives
== [RECIPE] Directional derivatives


== [RECAP] A recap of multivariable differentiation

Let's summarize the last few sections.