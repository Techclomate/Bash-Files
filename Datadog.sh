#!/bin/bash
D_AGENT_MAJOR_VERSION=7 DD_API_KEY=235e1f4c8617fb97badsadaddc36 DD_SITE="datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh)"
systemctl start datadog-agent
systemctl stop datadog-agent
systemctl restart datadog-agent
systemctl status datadog-agent
ls /var/log/datadog/
more /etc/datadog-agent/datadog.yaml
more /var/log/datadog/agent.log
more /var/log/datadog/process-agent.log
more /var/log/datadog/trace-agent.log
datadog-agent configcheck
datadog-agent config
datadog-agent health
datadog-agent hostname
datadog-agent version


