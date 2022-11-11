import json
import os
import sys


def main():
    results = json.loads(os.environ["INPUT_RESULTS"])
    sys.exit(any(x != "success" for x in results))


if __name__ == "__main__":
    main()
