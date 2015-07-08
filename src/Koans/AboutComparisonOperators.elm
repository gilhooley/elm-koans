module AboutComparisonOperators where

import ElmTest.Assertion exposing (..)
import ElmTest.Test as Test
import TestHelpers exposing (..)

testSuite = Test.suite "About Comparison Operators" [
              Test.test "== tests for equality" (assert (1 == 1)),
              Test.test "/= tests for inequality" (assert (1 /= 2)),
              Test.test "< tests for less than" (assert (1 < 2)),
              Test.test "<= tests for less than or equal to" (assert (1 <= 1)),
              Test.test "> tests for greater than" (assert (2 > 1)),
              Test.test ">= tests for greater than or equal to" (assert (1 >= 1)),
              Test.test "Floats are comparable" (assert (1.5 >= 1.5)),
              Test.test "Strings are comparable" (assert ("A string" == "A string")),
              Test.test "Chars are comparable" (assert ('a' == 'a')),
              Test.test "max returns the maximum of two comparables" (assertEqual 2 (max 1 2)),
              Test.test "min returns the minimum of two comparables" (assertEqual 1 (min 1 2)),
              Test.test "compare returns an Order" (assertEqual LT (compare 1 2)),
              Test.test "functions can be made infix with ``" (assertEqual GT (2 `compare` 1))
            ]
