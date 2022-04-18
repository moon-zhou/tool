#!/usr/bin/expect -b

#set timeout 5
# -1表示永不超时
set timeout -1

set user "user"
set pwd "password"
set host "ip"

spawn ssh -p 22 $user@$host

expect {
    "*yes/no" {
      send "yes\r"
      exp_continue
    }
    "*assword:" {
      send "$pwd\r"
      exp_continue
    }
    ">" {
      send "sudo su -\r"
    }
}

send "echo \"login onboarding uat successfully and change for root\"\r"

send "ps -ef | grep onboarding.jar | grep -v \"grep\" | awk '{print \$2}'\r"

send "\r"

#send "echo \"$expect_out(1,string)\""

interact
