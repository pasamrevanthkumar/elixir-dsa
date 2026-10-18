defmodule ElixirDsa.ListsTest do
  use ExUnit.Case, async: true

  alias ElixirDsa.Lists

  describe "sum/1" do
    test "sums a list of numbers" do
      assert Lists.sum([1, 2, 3, 4]) == 10
    end

    test "returns zero for an empty list" do
      assert Lists.sum([]) == 0
    end

    test "handles negative numbers" do
      assert Lists.sum([-2, 5, -3]) == 0
    end
  end

  describe "reverse/1" do
    test "reverses a list" do
      assert Lists.reverse([1, 2, 3]) == [3, 2, 1]
    end

    test "handles an empty list" do
      assert Lists.reverse([]) == []
    end

    test "handles a single element" do
      assert Lists.reverse([42]) == [42]
    end
  end

  describe "contains?/2" do
    test "returns true when an element exists" do
      assert Lists.contains?([1, 2, 3], 2)
    end

    test "returns false when an element does not exist" do
      refute Lists.contains?([1, 2, 3], 5)
    end

    test "returns false for an empty list" do
      refute Lists.contains?([], 1)
    end
  end

  describe "invalid inputs" do
    test "sum rejects a number instead of a list" do
      assert_raise ArgumentError, "sum expects a list of numbers", fn ->
        Lists.sum(42)
      end
    end

    test "sum rejects non-numeric list elements" do
      assert_raise ArgumentError, "sum expects a list of numbers", fn ->
        Lists.sum([1, "hello"])
      end
    end

    test "reverse rejects a string" do
      assert_raise ArgumentError, "reverse expects a list", fn ->
        Lists.reverse("hello")
      end
    end

    test "contains? rejects a number instead of a list" do
      assert_raise ArgumentError,
                   "contains? expects a list as its first argument",
                   fn ->
                     Lists.contains?(42, 10)
                   end
    end
  end
end
