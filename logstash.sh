kubectl create ns monit

kubectl create configmap pipeline-config --from-file=logstash/pipeline.conf -n monit
kubectl create configmap logstash-config --from-file=logstash/logstash.yaml -n monit

kubectl create -f logstash/deployment.yaml