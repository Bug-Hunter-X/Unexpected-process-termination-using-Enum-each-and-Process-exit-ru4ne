# Elixir Bug: Unexpected Process Termination

This repository demonstrates a potential issue in Elixir when using `Enum.each` with `Process.exit` inside a function. The code terminates unexpectedly if a specific condition is met during the iteration, potentially leaving tasks incomplete.

The `bug.ex` file contains the buggy code, showcasing the problematic behavior.  The `bugSolution.ex` file provides a corrected version which uses `Enum.map` and avoids early process termination unless explicitly intended.

## Bug Description

The issue arises from the use of `Process.exit` within an `Enum.each` function. When the condition `x == 3` is met, the current process immediately exits, preventing the remaining elements of the list from being processed by `IO.puts`. This behavior can lead to subtle and difficult-to-debug issues in larger applications.

## Solution

The solution involves replacing `Enum.each` with a safer alternative, such as `Enum.map`,  which handles each element independently without causing abrupt process termination.  This allows the code to complete its iteration even if a specific condition is met. 