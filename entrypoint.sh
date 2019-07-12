
#!/usr/bin/env bash

if [ -d "/tcell-agent" ]; then
    pip install -qe /tcell-agent \
        || echo "WARNING: Agent source directory exists but is empty not found — is pythonagent-tcell checked out?"
fi

tcell_agent run python manage.py runserver 0.0.0.0:80
