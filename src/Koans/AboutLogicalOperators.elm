module AboutLogicalOperators where

import ElmTest.Assertion exposing (..)
import ElmTest.Test as Test
import TestHelpers exposing (..)

testSuite = Test.suite "About Logical Operators" [
              Test.test "not negates a boolean" (assertEqual False (not True)),
              Test.test "&& is a logical AND" (assert (True && True)),
              Test.test "|| is a logical OR" (assert (False || True)),
              Test.test "xor is a logical XOR" (assert (False `xor` True)),
              Test.test "otherwise is an alias for True" (assertEqual otherwise True)
            ]
