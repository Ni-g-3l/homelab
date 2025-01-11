# 🏠 Homelab - npm [![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

This repository contains all of the code used to configure npm. You can naviguate throught directories and check how it works.

## Install

First of all, you need to create a docker network to share with all of your services.

```bash

docker network create homelab_network_proxy

```

Then once the service started, you can log to UI on : [127.0.0.1:81](127.0.0.1:81). And connect to with following admin user.

```
Email: admin@example.com
Password: changeme
```

## Usage

### Start npm

```bash
make
```

### Update npm

```bash
make update
```

## 🤹 Authors / Contributers / Attributions

* **Ni-g-3l** - *Main Developer* - [Github](https://github.com/Ni-g-3l/)

## 📃 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details.

## 👏 Acknowledgments

* **Billie Thompson** - *README & Contribution Templates* - [PurpleBooth](https://github.com/PurpleBooth)
