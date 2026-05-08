import os
import shlex
import subprocess
import sys
from datetime import datetime


DOCKER_COMPOSE_FILE = "docker-compose.yml"


def run_backup(root, backup_dir):
    os.makedirs(backup_dir, exist_ok=True)
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")

    for entry in os.listdir(root):
        service_dir = os.path.join(root, entry)
        if not os.path.isdir(service_dir):
            continue
        if not os.path.exists(os.path.join(service_dir, DOCKER_COMPOSE_FILE)):
            continue

        archive_name = f"{entry}_{timestamp}.tar.gz"
        archive_path = os.path.join(backup_dir, archive_name)

        storage_path = os.path.join(service_dir, "storage")
        config_path = os.path.join(service_dir, "config")
        env_file = os.path.join(service_dir, ".env")

        paths = []
        if os.path.exists(storage_path):
            paths.append(storage_path)
        if os.path.exists(config_path):
            paths.append(config_path)
        if os.path.exists(env_file):
            paths.append(env_file)

        if not paths:
            print(f"Nothing to backup for '{entry}'")
            continue

        print(f"Backing up '{entry}' -> {archive_name}")
        cmd = ["tar", "-czf", archive_path] + paths
        subprocess.run(cmd, check=True)

    print(f"Backup complete. Files in: {backup_dir}")


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python backup.py <services_root> <backup_dir>")
        sys.exit(1)

    run_backup(sys.argv[1], sys.argv[2])
