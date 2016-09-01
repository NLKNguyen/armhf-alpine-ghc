FROM nlknguyen/armhf-alpine-qemu:latest

ENV PATH ${PATH}:/root/.cabal/bin

COPY mitch.tishmack@gmail.com-55881c97.rsa.pub /etc/apk/keys/mitch.tishmack@gmail.com-55881c97.rsa.pub

COPY build.sh /tmp/
RUN ["qemu-arm-static", "/bin/sh", "/tmp/build.sh"]

CMD ["ash"]
