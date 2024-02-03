#!/usr/bin/env python3
import argparse
import math
from typing import List, Tuple


def calculate_num_digits(number: int) -> int:
    if number > 0:
        return int(math.log10(number)) + 1
    else:
        return 1


def find_numbers_with_rightmost_digit(
    start: int,
    end: int,
    target_digit: int,
) -> List[int]:
    result = []
    num_digits = calculate_num_digits(target_digit)
    divider = 10**num_digits

    for num in range(start, end + 1):
        last_digit = num % divider
        if last_digit == target_digit:
            result.append(num)

    return result


def parse_range(arg: str) -> Tuple[int, int]:
    bounds = list(map(int, arg.split("-")))
    if len(bounds) != 2:
        raise argparse.ArgumentTypeError("Ranges must be in the format 'start-end'")
    return tuple(bounds)


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Find numbers with a specific rightmost digit in given ranges."
    )
    parser.add_argument(
        "ranges",
        type=parse_range,
        nargs="+",
        help='Ranges in the format "start1-end1 start2-end2 ..."',
    )
    parser.add_argument("target_digit", type=int, help="Target digit to search for")

    args = parser.parse_args()

    results = []

    for start, end in args.ranges:
        result = find_numbers_with_rightmost_digit(start, end, args.target_digit)
        results.extend(result)

    print(
        f"Numbers in the specified ranges with the rightmost digit {args.target_digit}:"
    )
    print(results)


if __name__ == "__main__":
    main()
