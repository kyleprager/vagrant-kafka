vagrant-kafka
=============
Vagrant setup to run kafka.

Usage
=====
```vagrant up``` brings up a single vm with Ubuntu 12.04.4 LTS at ```10.30.3.2```.
If you would like to use parallels instead, do ```vagrant up --provider parallels```.

Services
========
| Service   | Port |
| --------- | ---- |
| zookeeper | 2181 |
| kafka     | 9092 |

Todo
====
Replace shell scripts with more robust and configurable chef/puppet provisioning, possibly [[3]](https://github.com/mthssdrbrg/kafka-cookbook).

References
==========
1. http://kafka.apache.org/
1. https://github.com/eucuepo/vagrant-kafka
1. https://github.com/mthssdrbrg/kafka-cookbook
1. https://github.com/Webtrends/kafka
1. https://github.com/wikimedia/puppet-kafka
1. https://github.com/stealthly/kafka