FROM ann-benchmarks

# Add Docker's official GPG key:
RUN apt-get update
RUN apt-get install ca-certificates curl
RUN install -m 0755 -d /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
RUN chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
RUN echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update 
RUN apt-get install -y wget docker-ce-cli docker-compose-plugin

RUN pip3 install pymilvus==2.6.3
RUN python3 -c "from pymilvus import Collection"

# Install milvus standalone by docker-compose.yml
RUN wget https://github.com/milvus-io/milvus/releases/download/v2.6.3/milvus-standalone-docker-compose.yml -O docker-compose.yml
RUN sed -i 's|${DOCKER_VOLUME_DIRECTORY:-.}|/tmp|g' docker-compose.yml
# # Set CPU count (how many CPUs can be used, not which ones)
RUN sed -i '/container_name: milvus-standalone/a \    cpus: 2.0\n    mem_limit: 4G' docker-compose.yml
RUN sed -i '/container_name: milvus-etcd/a \    cpus: 1.0\n    mem_limit: 1G' docker-compose.yml
RUN sed -i '/container_name: milvus-minio/a \    cpus: 1.0\n    mem_limit: 1G' docker-compose.yml