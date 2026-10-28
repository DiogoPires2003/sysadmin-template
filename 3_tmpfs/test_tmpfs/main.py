import time
from os import PathLike, urandom
from typing import Any


def main() -> None:

    normal_path = "/home/amsa/Desktop/sysadmin-template/3_tmpfs/test_tmpfs/testfile"
    tmpfs_path = "/mnt/mytmpfs/testfile"

    normal_result = benchmark(normal_path)
    tmpfs_result = benchmark(tmpfs_path)

    relation = relation_aspect(normal_result, tmpfs_result)

    print(
        "Escriure a tmpfs és ",
        f"{relation:.2f}",
        " vegades més ràpid que escriure a un directori normal.",
    )


def benchmark(path: str | PathLike) -> Any:  # Change return type as needed
    MB = 1024 * 1024

    data = urandom(100 * MB)
    start_time = time.time()
    with open(path, "wb") as f:
        f.write(data)
    end_time = time.time()

    return end_time - start_time


def relation_aspect(
    normal_result: Any, tmpfs_result: Any
) -> float:  # Change parameter types as needed

    if tmpfs_result == 0:
        return float("inf")
    return normal_result / tmpfs_result


if __name__ == "__main__":
    main()
