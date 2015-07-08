module AboutStrings where

import String
import ElmTest.Assertion exposing (..)
import ElmTest.Test as Test
import TestHelpers exposing (..)

testSuite = Test.suite "About Strings" [
              Test.test "length returns the string length" (assertEqual 5 (String.length "Hello")),
              Test.test "isEmpty tests for an empty string" (assert (String.isEmpty "")),
              Test.test "reverse returns the reverse of a string" (assertEqual "olleH" (String.reverse "Hello")),
              Test.test "repeat returns the a string repeated n times" (assertEqual "yaya" (String.repeat 2 "ya")),
              Test.test "the ++ infix function appends two strings" (assertEqual ("Elm" ++ "Lang") "ElmLang"),
              Test.test "append does the same thing" (assertEqual (String.append "Elm" "Lang") "ElmLang"),
              Test.test "concat appends a list of strings together" (assertEqual (String.concat ["Elm", "Lang", "Yay!"]) "ElmLangYay!"),
              Test.test "join is like concat with a separator" (assertEqual (String.join "," ["I'm", "a", "csv"]) "I'm,a,csv"),
              Test.test "split does the opposite" (assertEqual (String.split "," "I'm,a,csv") ["I'm", "a", "csv"]),
              Test.test "slice gets a substring" (assertEqual (String.slice 4 12 "I'm a string") "a string"),
              Test.test "negative indicies start from the end" (assertEqual (String.slice -8 -1 "I'm a string") "a strin"),
              Test.test "left takes the first n characters of a string" (assertEqual (String.left 3 "I'm a string") "I'm"),
              Test.test "right takes the last n characters of a string" (assertEqual (String.right 3 "I'm a string") "ing"),
              Test.test "dropLeft drops the first n characters of a string" (assertEqual (String.dropLeft 3 "I'm a string") " a string"),
              Test.test "dropRight drops the last n characters of a string" (assertEqual (String.dropRight 3 "I'm a string") "I'm a str"),
              Test.test "contains looks for a substring" (assertEqual (String.contains "string" "I'm a string") True),
              Test.test "indexes gives the location of each occurance" (assertEqual (String.indexes "string" "I'm a string") [6])
              -- there are sooooo many string functions, just check them out
            ]
