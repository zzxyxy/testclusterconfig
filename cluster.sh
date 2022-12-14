k3d cluster create --api-port 6550 \
        -p "8081:80@loadbalancer" \
        -p "8082:443@loadbalancer" \
        -p "20000-20010:20000-20010/udp@loadbalancer" \
        -p "20000-20010:20000-20010/@loadbalancer" \
        -p "3306:3306@loadbalancer" \
        -p "5432:5432@loadbalancer" \
        -p "1883:1883@loadbalancer" \
        -p "9001:9001@loadbalancer" \
        -p "27017-27020:20017-20020@loadbalancer" \
        -p "9092:9092@loadbalancer" \
        -p "8001:8001@loadbalancer" \
        -p "6379:6379@loadbalancer" \
        --agents 2 test
