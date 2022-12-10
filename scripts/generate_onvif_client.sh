#!/bin/bash

ONVIF_SPEC_V10_DIRECTORY="/workspace/dep/onvif/specs/wsdl/ver10"
ONVIF_SPEC_V20_DIRECTORY="/workspace/dep/onvif/specs/wsdl/ver20"

ONVIF_NAMESPACE="OnvifSharp.Clients"
CLIENTS_DIRECTORY="/workspace/src/${ONVIF_NAMESPACE}"
CLIENTS_PROJECT="${CLIENTS_DIRECTORY}/${ONVIF_NAMESPACE}.csproj"

function generate_all_from_directory() {
    local DIRECTORY=${1}
    local VERSION=${2}

    for WSDL_FILE in $(find ${ONVIF_SPEC_V10_DIRECTORY} -name "*.wsdl")
    do
        CLIENT_NAME=$(basename -- ${WSDL_FILE%.*})
        VERSION="V10"
        dotnet-svcutil -nl -d ${CLIENTS_DIRECTORY} -pf ${CLIENTS_PROJECT} -i -n "*,${ONVIF_NAMESPACE}" -o "${CLIENT_NAME^}OnvifClient.g.cs" ${WSDL_FILE}
    done
}