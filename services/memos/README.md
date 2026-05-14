# Homelab - Memos

Open source, lightweight note-taking service. Easily capture and share your thoughts.

## Usage

### Start Memos

```bash
task up
```

### Update Memos

```bash
task update
```

## Environment

| Variable | Description |
|---|---|
| `MEMOS_INSTANCE_URL` | Public URL (e.g. `https://memos.example.com`) |

## Access

Once running, Memos is available at `http://<host>:5230`.
First-visit setup creates the admin account.

## Volumes

- `storage/data` — SQLite database and uploaded assets
