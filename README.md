# RabbitMQ Tutorials Codespaces

This project allows you to interactively inspect and run the [Rabbit MQ
Tutorials](https://www.rabbitmq.com/getstarted.html) from a local docker
development container or from Github Codespaces.

## Prerequisites

### Local Docker Development Container

- Install [Visual Studio Code](https://code.visualstudio.com/download).
- Install the VS Code [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) Extension Pack.
- If you are on Windows, install a Windows Subsystem for Linux 2
  (WSL2) with Ubuntu:
	- Enable WSL2 by following the [WSL2 installation guide](https://learn.microsoft.com/windows/wsl/install).
	- Install Ubuntu (or your preferred Linux distribution) from the [Microsoft store](https://www.microsoft.com/p/ubuntu/9nblggh4msv6).
- Install [Docker in
Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

### Github Codespaces

On the [repo
page](https://github.com/dominik-drexl-bl/rabbitmq-tutorials), click the
green `Code` button. In the `Codespaces` tab, click on `Create codespace
on main`.

## Project Structure

This project runs multiple containers via docker-compose.

- a RabbitMQ broker from an official image
- a RabbitMQ python client build from a local Dockerfile

The local Dockerfile, which is based on a devcontainer image, defines
the development environment for the RabbitMQ clients.

The network in the containers is configured, so that the RabbitMQ client
can connect to the RabbitMQ broker via `localhost`.

---

## Usage

Run VS Code in the root of this repo, open the command prompt (F1), and
select `Dev Containers: Open Folder in Container...`

You should now be in an ubuntu-based development container with the
RabbitMQ broker running.

### Client

To run/debug a RabbitMQ client, go to any file, e.g. [hello_world/send.py](hello_world/send.py) and hit F5.

### Server

To inspect the RabbitMQ server, go to the management page,
http://localhost:15672. The default username and password are *guest*
and *guest*.
