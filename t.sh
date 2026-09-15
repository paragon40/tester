
for i in {1..20}; do
  date
  curl -s -o /dev/null \
       -w '%{http_code} %{time_total}\n' \
       --max-time 2 \
       http://10.244.3.27:8080/ready
  sleep 1
done
