# ansible-dockerfile
dockerfile for ansible container ~

Podman run指令
podman run --pull always --rm --replace --name test_ansible -v /root/testspace:/workspace -p 55555:22 -p 55556:9527 --cap-add AUDIT_WRITE --workdir /workspace -idt docker.io/milkliver/ansible-container:latest
