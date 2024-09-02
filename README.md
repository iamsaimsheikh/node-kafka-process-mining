# node-kafka-process-mining

A research repository for the implementation of automating Apache Kafka configurations using process mining and reinforcement learning.

## Overview

This project explores the use of process mining and reinforcement learning to automate configurations in Apache Kafka. It involves setting up a development environment with Dockerized Kafka and Zookeeper, along with a Node.js application.

## Setup

### Prerequisites

Before you start, ensure you have the following installed:

- **Node.js 20**: Make sure Node.js version 20 is installed on your system.
- **Docker**: Docker is required to run Kafka and Zookeeper in containers.
- **Docker Compose** (optional): Docker Compose can simplify the management of multiple containers.

### Running Kafka and Zookeeper

You can run Kafka and Zookeeper using Docker. Follow these steps to set them up:

1. **Start Zookeeper**

   Start a Zookeeper container with the following command:

   ```sh
   docker run -p 2181:2181 zookeeper

2. **Start Kakfa**

    Start Kafka with following command:

    ```sh
    docker run -p 9092:9092 \
        -e KAFKA_ZOOKEEPER_CONNECT=<CURRENT_IP_ADDRESS>:2181 \
        -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://<CURRENT_IP_ADDRESS>:9092 \
        -e KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1 \
        confluentinc/cp-kafka
