defmodule CyclicRotation do

@moduledoc ~S"""
## Cyclic Rotation

Write a function:

function solution(A, K);

that, given an array A consisting of N integers and an integer K, returns the array A rotated K times.

For example, given

    A = [3, 8, 9, 7, 6]
    K = 3
the function should return `[9, 7, 6, 3, 8]`. Three rotations were made:

    [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
    [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
    [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
For another example, given

    A = [0, 0, 0]
    K = 1
the function should return `[0, 0, 0]`

Given

    A = [1, 2, 3, 4]
    K = 4
the function should return `[1, 2, 3, 4]`

Assume that:

N and K are integers within the range [0..100];
each element of array A is an integer within the range [−1,000..1,000].
In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.

"""

   @doc ~S"""
   Return a rotated array giving an array and a number of times
   ### Examples
       iex> CyclicRotation.from([3, 8, 9, 7, 6], 3)
       [9, 7, 6, 3, 8]
   """
    @spec from(nonempty_list(integer), integer) :: nonempty_list(integer)
    def from(arr, times) do
        context = arr |> Enum.reverse() |> Enum.slice(0, times) |> Enum.reverse()
        context ++ (arr -- context)
    end


end