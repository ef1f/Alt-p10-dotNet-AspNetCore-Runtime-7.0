FROM registry.altlinux.org/alt/alt:p10
ENV ASPNETCORE_URLS=http://+:80 DOTNET_RUNNING_IN_CONTAINER=true
RUN apt-get update && apt-get install -y ca-certificates curl wget tzdata dotnet-aspnetcore-runtime-7.0 && \
apt-get clean && ln -sf --suffix=.backup /usr/share/zoneinfo/UTC /etc/localtime && find /var/lib/apt/lists/ -type f -exec rm {} + 
