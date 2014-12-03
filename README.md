# GCBASE
image:

twgc/base:0.3

twgc/redis:0.3 -> base:0.3

twgc/nginx:0.3 -> base:0.3

twgc/mongodb:0.3 -> base:0.3 (found mount volumn do not work)

twgc/jre7:0.3 -> base:0.3

twgc/solr:0.3 -> twgc/jre7:0.3