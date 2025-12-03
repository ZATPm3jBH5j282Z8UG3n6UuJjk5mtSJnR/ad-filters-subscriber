# from your local clone root
cat > verify-config.sh <<'EOF'
#!/usr/bin/env bash
set -e

# go to repo root (run this script from repo root or change the path)
# cd /path/to/your/ad-filters-subscriber

# make sure you're on the branch you pushed to
git checkout main
git pull origin main

# list config folder
ls -la config

# show the file contents
cat config/application.yaml

# quick sanity: show first 40 lines with line numbers
nl -ba config/application.yaml | sed -n '1,40p'
EOF

chmod +x verify-config.sh
git add verify-config.sh
git commit -m "Add verify-config.sh helper script"
git push origin main
