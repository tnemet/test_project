*** Settings ***
Library    OperatingSystem
Library    SSHLibrary
Library    Process

*** Variables ***
${QEMU_IMAGE}      /home/tnemet/openwrt/myimages/x86.iso     # image location
${QEMU_COMMAND}    qemu-system-x86_64 -boot d -cdrom ${QEMU_IMAGE} # qemu command
${QEMU_HOST}       192.168.8.11  # qemu host IP 
${QEMU_PORT}       22           # qemu SSH port
${QEMU_USERNAME}   root         # qemu SSH username


*** Test Cases ***
Start Process
    ${qemu}=    Set Variable    ${QEMU_COMMAND}
    Start Process    ${qemu}    shell=True	alias=qemu_process
    Sleep    1s
    ${started}=    Run    ps -A | grep qemu
    Should Contain    ${started}    qemu-system-x86
   