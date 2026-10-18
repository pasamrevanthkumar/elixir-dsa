alias ElixirDsa.Lists

IO.puts("=== List Operations Demo ===")

IO.puts("Sum: #{Lists.sum([1, 2, 3, 4, 5])}")

IO.inspect(Lists.reverse([1, 2, 3]),
  label: "Reversed list"
)

IO.inspect(Lists.contains?([10, 20, 30], 20),
  label: "Contains 20?"
)

IO.inspect(Lists.contains?([10, 20, 30], 99),
  label: "Contains 99?"
)
