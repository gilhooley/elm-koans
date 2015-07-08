module AboutFunctions where

import ElmTest.Assertion exposing (..)
import ElmTest.Test as Test
import TestHelpers exposing (..)

add1 x = x + 1

add : number -> number -> number
add x y = x + y

subtract = \x y -> x - y

subtractFrom4 : number -> number
subtractFrom4 = subtract 4

always5 = always 5

subtract4 = (flip subtract) 4

multiplyBy2 x = 2 * x

testSuite = Test.suite "About Functions" [
              Test.test "the identity function returns whatever it is passed" (assertEqual 4 (identity 4)),
              Test.test "functions are defined as 'name args = implementation'" (assertEqual 7 (add1 6)),
              Test.test "functions may have an optional type signature" (assertEqual 11 (add 3 8)),
              Test.test "functions may be used as infix with backticks" (assertEqual 5 (3 `add` 2)),
              Test.test "anonymous functions are defined with '\\args -> implementation'" (assertEqual 5 (subtract 8 3)),
              Test.test "anonymous functions may be defined inline" (assertEqual 5 ((\x y -> x - y) 8 3)),
              Test.test "functions passed some values return curried functions" (assertEqual 1 (subtractFrom4 3)),
              Test.test "the always function returns its first argument, no matter what the second is" (assertEqual 5 (always5 4)),
              Test.test "the flip function flips the order of the first two arguments of a function" (assertEqual 5 (subtract4 9)),
              Test.test "f <| a applies the function f to the arg a" (assertEqual 6 (subtract4 <| add 1 9)),
              Test.test "a |> f applies the function f to the arg a" (assertEqual 6 (add 1 9 |> subtract4)),
              Test.test "g << f composes function g with function f" (assertEqual 10 ((multiplyBy2 << subtract4) 9)),
              Test.test "f >> g composes function g with function f" (assertEqual 10 ((subtract4 >> multiplyBy2) 9))
            ]
