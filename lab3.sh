1. more -n 5 /etc/passwd
2. cat tekst1 tekst2 > tekst3
3. find . -maxdepth 1 -type f -exec head -n 5 -q {} \;
4. head -n 5 /etc/passwd | tail -n 3
5. tail -n 7 /etc/passwd | head -n 3
6. cat /etc/passwd | tr '\n' ' '
7. cat /etc/passwd | tr ' ' '\n'
8. find /etc -type f | wc -l
9. head -n 3 /etc/passwd | wc -c
10. find . -maxdepth 1 -type f | tr [a-z] [A-Z]
11. ls -l | grep '^-' | tr -s ' ' | cut -d ' ' -f1,5,9
12. ls -l | grep '^-' | tr -s ' ' | sort -t ' ' -n -k5
13. cat /etc/passwd | sort -nr -t : -k3
14. cat /etc/passwd | sort -t: -k4,4rn -k3,3rn
15. ls -l | grep ^- | tr -s ' ' | sort -k5n | head -n 3 | sort -k9
16. cat /etc/services | grep -i udp
17. ls -l /dev | grep tty[56][0-9] | wc -l
18. ps -fe | grep cupsd | tr -s ' ' | cut -d ' ' -f2 | head -n 1
