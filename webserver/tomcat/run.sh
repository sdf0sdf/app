#!/bin/sh

/bin/sleep 15;
exec ${CATALINA_HOME}/bin/catalina.sh jpda run
