# neo4j-compose

[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable) ![License](https://img.shields.io/badge/license-CC--BY--4.0-blue.svg "CC-BY-4.0")

> **Various Configuations of Neo4j using docker-compose**

## Getting Started

To run neo4j using docker-compose; simply run the command:

```sh
 docker-compose -f <docker-compose-file.yml> up -d
```

All configurations will bind to port **7474** & **7687**

* **neo4j-base**

* **self_signed_ssl**

* **no_ssl**

* **neosemantics**
