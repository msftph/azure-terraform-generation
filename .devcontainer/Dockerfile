FROM mcr.microsoft.com/devcontainers/base:jammy

ARG AZ_TF_EXPORT_VERSION=0.11.0

RUN export AZ_TF_EXPORT_ZIP=aztfexport_v${AZ_TF_EXPORT_VERSION}_linux_amd64.zip && \
    wget -P /tmp https://github.com/Azure/aztfexport/releases/download/v${AZ_TF_EXPORT_VERSION}/${AZ_TF_EXPORT_ZIP} && \    
    unzip /tmp/${AZ_TF_EXPORT_ZIP} -d /usr/local/bin/ aztfexport && \
    aztfexport --help

ARG TERRAFORMER_VERSION=0.8.22

RUN wget -O /usr/local/bin/terraformer https://github.com/GoogleCloudPlatform/terraformer/releases/download/${TERRAFORMER_VERSION}/terraformer-all-linux-amd64 && \
    chmod +x /usr/local/bin/terraformer && \
    terraformer --help