#!/bin/bash

ONVIF_SPEC_V10_FOLDER="/workspace/dep/onvif/specs/wsdl/ver10"
ONVIF_SPEC_V20_FOLDER="/workspace/dep/onvif/specs/wsdl/ver20"

ONVIF_NAMESPACE="OnvifSharp.Clients"
CLIENTS_FOLDER="/workspace/src/${ONVIF_NAMESPACE}"
CLIENTS_PROJECT="${CLIENTS_FOLDER}/${ONVIF_NAMESPACE}.csproj"

# for FILE in $(find ${ONVIF_SPEC_V10_FOLDER} -name "*.wsdl")
# do
#     # echo ${FILE}
#     NAME=$(basename -- ${FILE%.*})
#     echo ${NAME}
#     VERSION="V10"
#     dotnet-svcutil -nl -d ${CLIENTS_FOLDER} -pf ${CLIENTS_PROJECT} -i -n "*,${ONVIF_NAMESPACE}.${VERSION}" -o "${NAME}Client${VERSION}.g.cs" ${FILE}
# done
