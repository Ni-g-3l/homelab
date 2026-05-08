#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SETUP_DIR="$SCRIPT_DIR/setup"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log_info()  { echo -e "${GREEN}[INFO]${NC} $1"; }
log_warn()  { echo -e "${YELLOW}[WARN]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

run_step() {
  local name="$1"
  local script="$2"
  echo ""
  log_info "=== $name ==="
  if [ -x "$script" ]; then
    if bash "$script"; then
      log_info "=== $name completed ==="
    else
      log_error "=== $name failed ==="
      exit 1
    fi
  else
    log_warn "Script not found or not executable: $script"
  fi
}

show_menu() {
  echo ""
  echo "Selfhosted Homelab - Bootstrap"
  echo "=============================="
  echo "1) Full setup (all steps)"
  echo "2) SSH & security"
  echo "3) Fail2Ban"
  echo "4) UFW firewall"
  echo "5) Docker"
  echo "6) Homelab tools (Task, venv)"
  echo "7) Quit"
  echo ""
  read -rp "Select an option [1-7]: " choice
  echo ""
  case "$choice" in
    1)
      run_step "SSH & Security"      "$SETUP_DIR/ssh.sh"
      run_step "Fail2Ban"            "$SETUP_DIR/fail2ban.sh"
      run_step "UFW Firewall"        "$SETUP_DIR/ufw.sh"
      run_step "Docker"              "$SETUP_DIR/docker.sh"
      run_step "Homelab Tools"       "$SETUP_DIR/homelab.sh"
      log_info "Full setup complete! Reboot recommended."
      ;;
    2) run_step "SSH & Security" "$SETUP_DIR/ssh.sh" ;;
    3) run_step "Fail2Ban"       "$SETUP_DIR/fail2ban.sh" ;;
    4) run_step "UFW Firewall"   "$SETUP_DIR/ufw.sh" ;;
    5) run_step "Docker"         "$SETUP_DIR/docker.sh" ;;
    6) run_step "Homelab Tools"  "$SETUP_DIR/homelab.sh" ;;
    7) exit 0 ;;
    *) log_error "Invalid option" && show_menu ;;
  esac
}

if [ $# -eq 0 ]; then
  show_menu
else
  case "$1" in
    all)       run_step "SSH & Security" "$SETUP_DIR/ssh.sh"; run_step "Fail2Ban" "$SETUP_DIR/fail2ban.sh"; run_step "UFW Firewall" "$SETUP_DIR/ufw.sh"; run_step "Docker" "$SETUP_DIR/docker.sh"; run_step "Homelab Tools" "$SETUP_DIR/homelab.sh"; log_info "Full setup complete!" ;;
    ssh)       run_step "SSH & Security" "$SETUP_DIR/ssh.sh" ;;
    fail2ban)  run_step "Fail2Ban"       "$SETUP_DIR/fail2ban.sh" ;;
    ufw)       run_step "UFW Firewall"  "$SETUP_DIR/ufw.sh" ;;
    docker)    run_step "Docker"         "$SETUP_DIR/docker.sh" ;;
    homelab)   run_step "Homelab Tools"  "$SETUP_DIR/homelab.sh" ;;
    *)         echo "Usage: $0 [all|ssh|fail2ban|ufw|docker|homelab]" && exit 1 ;;
  esac
fi
