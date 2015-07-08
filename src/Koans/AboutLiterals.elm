module AboutLiterals where

import ElmTest.Assertion exposing (..)
import ElmTest.Test as Test
import TestHelpers exposing (..)

testSuite = Test.suite "About Literals" [
              -- Single line comments begin with "--"
              {- Multi line comments
                 begin with "{-" and end with "-}"
              -}
              Test.test "strings are enclosed in double quotes" (assertEqual "A string" "A string"),
              Test.test "characters are enclosed in single quotes" (assertEqual 'A' 'A'),
              Test.test "floats have a decimal" (assertEqual 42.24 42.24),
              Test.test "integers do not" (assertEqual 42 42),
              Test.test "number literals can be integers" (assertEqual 42 42),
              Test.test "number literals can be floats" (assertEqual 42 42.0),
              Test.test "lists are denoted by brackets" (assertEqual [1, 2, 3] [1,2,3])
            ]
