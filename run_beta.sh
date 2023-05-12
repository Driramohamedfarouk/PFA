#!/bin/bash


docker run -dt --rm --name ligra-auto -v /home/farouk/auto-tests:/data faroukdrira/ligra:1.1
docker cp automate.sh ligra-auto:/
chmod +x automate.sh
docker exec ligra-auto ./automate.sh ./algorithms/PageRank -rounds 0 -maxiters 10  web-Google 
docker stop ligra-auto



docker run -dt --rm --name ligra-auto -v /home/farouk/auto-tests:/data faroukdrira/ligra:1.1
docker cp automate.sh ligra-auto:/
chmod +x automate.sh
docker exec ligra-auto ./automate.sh ./algorithms/PageRank -rounds 0 -maxiters 20  web-Google
docker stop ligra-auto


docker run -dt --rm --name ligra-auto -v /home/farouk/auto-tests:/data faroukdrira/ligra:1.1
docker cp automate.sh ligra-auto:/
chmod +x automate.sh
docker exec ligra-auto ./automate.sh ./algorithms/PageRank -rounds 0 -maxiters 50  web-Google
docker stop ligra-auto


docker run -dt --rm --name ligra-auto -v /home/farouk/auto-tests:/data faroukdrira/ligra:1.1
docker cp automate.sh ligra-auto:/
chmod +x automate.sh
docker exec ligra-auto ./automate.sh ./algorithms/PageRank -rounds 0 web-Google
docker stop ligra-auto


docker run -dt --rm --name ligra-auto -v /home/farouk/auto-tests:/data faroukdrira/ligra:1.1
docker cp automate.sh ligra-auto:/
chmod +x automate.sh
docker exec ligra-auto ./automate.sh ./algorithms/BFS -rounds 0 -maxiters 20  web-Google
docker stop ligra-auto

