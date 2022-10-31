FROM golang
RUN go install github.com/odeke-em/drive/cmd/drive@latest
WORKDIR /opt/gdrive
RUN addgroup --gid 1000 mbarreto 
RUN adduser --home /opt/gdrive --uid 1000 --gid 1000 mbarreto --disabled-password
USER mbarreto:mbarreto
