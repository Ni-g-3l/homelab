import os
import subprocess


def run_command_in_services(root, cmd):
    for dir in os.listdir(root):
        dir = os.path.join(root, dir)
        if not os.path.isdir(dir):
            continue
        service_directory = os.path.join(root, dir)
        print(f"Run command {cmd} in service '{dir}'")
        try:
            subprocess.run(cmd.split(" "), cwd=service_directory)
            print("Service started")
        except subprocess.CalledProcessError as e:
            print(
                f"Error on command running, Command : '{cmd}', Service Folder : '{service_directory}'"
            )


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Run `make` in all service folders.")
    parser.add_argument(
        "root",
        nargs="?",
        default=".",
        help="Root directory to search (default: current directory).",
    )
    parser.add_argument(
        "--cmd", default="make", help="Command to run in all services folder"
    )
    args = parser.parse_args()

    run_command_in_services(args.root, args.cmd)
