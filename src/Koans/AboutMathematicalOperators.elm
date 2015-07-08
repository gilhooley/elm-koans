module AboutMathematicalOperators where

import ElmTest.Assertion exposing (..)
import ElmTest.Test as Test
import TestHelpers exposing (..)

testSuite = Test.suite "About Mathematical Operators" [
              Test.test "negate gives the negative of a number" (assertEqual -3 (negate 3)),
              Test.test "abs gives the absolute value of a number" (assertEqual 3 (abs 3)),
              Test.test "sqrt gives the square root of a Float" (assertEqual 3.0 (sqrt 9)),
              Test.test "+ adds numbers" (assertEqual 3 (1 + 2)),
              Test.test "- subtracts numbers" (assertEqual 3 (7 - 4)),
              Test.test "* multiplies numbers" (assertEqual 6 (4 * 1.5)),
              Test.test "/ divides Floats" (assertEqual 2.5 (5 / 2)),
              Test.test "// divides Ints" (assertEqual 2 (5 // 2)),
              Test.test "rem gives the remainder after division" (assertEqual 2 (5 `rem` 3)),
              Test.test "% performs modular arithmetic (which is different)" (assertEqual 4 (-1 % 5)),
              Test.test "logBase returns the log of the value in the given base" (assertEqual 3 (logBase 2 8)),
              Test.test "clamp returns the value if it is between the given min and max" (assertEqual 5 (clamp 1 10 5)),
              Test.test "clamp returns the min value if the value is below the minimum" (assertEqual 1 (clamp 1 10 -5)),
              Test.test "clamp returns the max value if the value is above the maximum" (assertEqual 10 (clamp 1 10 50))
            ]
