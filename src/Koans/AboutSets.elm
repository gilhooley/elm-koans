module AboutSets where

import ElmTest.Assertion exposing (..)
import ElmTest.Test as Test
import TestHelpers exposing (..)
import Set

assertEqualSets set1 set2 = assertEqual (Set.toList set1) (Set.toList set2)
oneTwoThree = Set.fromList [1, 2, 3]

testSuite = Test.suite "About Sets" [
              Test.test "a set can be created from a list" (assertEqualSets (Set.fromList [3, 2, 1]) (Set.fromList [1, 2, 3])),
              Test.test "a set cannot contain duplicates" (assertEqualSets (Set.fromList [1, 2, 3]) (Set.fromList [1, 2, 3, 3, 2, 1])),
              Test.test "sets may be empty" (assertEqualSets Set.empty Set.empty),
              Test.test "or contain a single value" (assertEqualSets (Set.singleton 0) (Set.singleton 0)),
              Test.test "insert may add a new element to a set" (assertEqualSets (Set.fromList [3, 2, 1, 4]) (Set.insert 4 oneTwoThree)),
              Test.test "but may not add duplicates" (assertEqualSets oneTwoThree (Set.insert 1 oneTwoThree)),
              Test.test "remove may subtract an element from a set" (assertEqualSets (Set.fromList [3, 2]) (Set.remove 1 oneTwoThree)),
              Test.test "but only if it is there" (assertEqualSets (Set.fromList [3, 2, 1]) (Set.remove 4 oneTwoThree)),
              Test.test "member can check if an element is in a set" (assertEqual True (Set.member 2 oneTwoThree)),
              Test.test "union will add two sets" (assertEqualSets (Set.fromList [3, 2, 1, 4]) (Set.union oneTwoThree (Set.fromList [3, 4]))),
              Test.test "intersect will get the intersection" (assertEqualSets (Set.fromList [3]) (Set.intersect oneTwoThree (Set.fromList [3, 4]))),
              Test.test "diff is the difference between the first and second sets" (assertEqualSets (Set.fromList [2]) (Set.diff oneTwoThree (Set.fromList [1, 3])))
            ]
