# GCBASE
image:

twgc/base:0.3

twgc/redis:0.3 -> base:0.3

twgc/nginx:0.3 -> base:0.3

twgc/mongodb:0.3 -> base:0.3 (found mount volumn do not work)

twgc/jre7:0.3 -> base:0.3

twgc/solr:0.3 -> twgc/jre7:0.3

1.port forwarding from you localhost to boot2docker vm
redis: 6379
solr: 8982
mongodb: 27017

2.modify /etc/hosts
192.168.59.103      deveportfolio.com usa.deveportfolio.com cm.deveportfolio.com
