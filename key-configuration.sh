#!/bin/bash
echo "###"
echo "### KEY CONFIGURATION ### "
echo "###"

NOW=$(date +"%Y%m%d-%H%M%S")

echo "### Back-up original key /home/vagrant/.ssh/authorized_keys"
cp /home/vagrant/.ssh/authorized_keys /home/vagrant/.ssh/authorized_keys.$NOW.bak
chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys.$NOW.bak

echo "### Adding public key ###"
echo "> Adding public key for Raffer"
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCJ80tFkXEZ41iDruqydqPwxnkCpSovE1iJ0xHTmAH8hqFYDYUjUc7/fm5/kd2HKwU/H2mjlEjBUYuflsAsG8hdnDPFRBVLCBDo1E8jdJB4rgaBg7C4rAbrZkT0ZsuPJ3YKa0VeiUgwqzd13STa1yoCPzHVKUEgHptuC9/10TPbkHDWMuwoRs4fZS/CxC41DkOmHE5cdixqGymSPvAP0lKLvexwuarIxGOB3i8L27FHhJB+E3UMKbSLgR2FFt10HwaQ1S4KZ3cJrnPT5hP3hAVpe7JM9CIeAzsJKn03onW0DtJN5HTqkI4cD/zfZa03rd2qa0zIkYRVK/WXUAVbPU6r" >> /home/vagrant/.ssh/authorized_keys