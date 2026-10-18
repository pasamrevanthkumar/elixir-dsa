defmodule ElixirDsa.Lists do
  @moduledoc """
  Basic list operations implemented recursively.
  """

  @doc "Returns the sum of all numbers in a list."
  def sum(list) when is_list(list) do
    if Enum.all?(list, &is_number/1) do
      sum_list(list)
    else
      raise ArgumentError, "sum expects a list of numbers"
    end
  end

  def sum(_other) do
    raise ArgumentError, "sum expects a list of numbers"
  end

  defp sum_list([]), do: 0

  defp sum_list([head | tail]) do
    head + sum_list(tail)
  end

  @doc "Returns a new list with elements in reverse order."
  def reverse(list) when is_list(list) do
    reverse_list(list, [])
  end

  def reverse(_other) do
    raise ArgumentError, "reverse expects a list"
  end

  defp reverse_list([], acc), do: acc

  defp reverse_list([head | tail], acc) do
    reverse_list(tail, [head | acc])
  end

  @doc "Returns true if the list contains the given value."
  def contains?(list, value) when is_list(list) do
    contains_list?(list, value)
  end

  def contains?(_other, _value) do
    raise ArgumentError, "contains? expects a list as its first argument"
  end

  defp contains_list?([], _value), do: false

  defp contains_list?([head | _tail], value) when head == value do
    true
  end

  defp contains_list?([_head | tail], value) do
    contains_list?(tail, value)
  end
end
