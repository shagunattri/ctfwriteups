#!/bin/sh

# Should start syslog server also and before klog, later it will be killed and restarted by translator.
# Error check needed?

ncecho 'Starting System Logger.     '
${SYSLOGD} -O ${LOG_FILE} -s ${LOG_SIZE} -b ${NO_OF_OLD_LOGS} -D -S
cecho green '[DONE]'


ncecho 'Starting Kernel Logger.     '
${KLOGD} -c ${KLOGD_LOG_LEVEL}
cecho green '[DONE]'
