defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "list filtering functionality" do

    test "should return 0 for an empty list" do
      assert ListFilter.call([]) == 0
    end

    test "should return 1 for a list with an odd number and an even one" do
      assert ListFilter.call(["1", "2"]) == 1
    end

    test "should return the amount of odd numbers in a heterogeneous list" do
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    end

  end
end
