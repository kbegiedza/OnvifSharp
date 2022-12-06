#!/bin/bash

CLIENTS_FOLDER="/workspace/src/OnvifSharp.Clients"
CLIENTS_PROJECT="${CLIENTS_FOLDER}/OnvifSharp.Clients.csproj"

dotnet-svcutil -nl -d ${CLIENTS_FOLDER} -pf ${CLIENTS_PROJECT} -edb -n "*,OnvifSharp.Clients" -o PTZClientV20.g.cs https://www.onvif.org/ver20/ptz/wsdl/ptz.wsdl