# Entropy Exploit

                  __                        
      ___  ____  / /__________  ____  __  __    ___
     / _ \/ __ \/ __/ ___/ __ \/ __ \/ / / /  [|   |=|{)__
    /  __/ / / / /_/ /  / /_/ / /_/ / /_/ /    |___| \/   )
    \___/_/ /_/\__/_/   \____/ .___/\__, /      /|\      /|
                            /_/    /____/      / | \     | \

<p align="center">
  <a href="http://entynetproject.simplesite.com/">
    <img src="https://img.shields.io/badge/entynetproject-Ivan%20Nikolsky-blue.svg">
  </a>
  <a href="https://github.com/entynetproject/entropy/releases">
    <img src="https://img.shields.io/github/release/entynetproject/entropy.svg">
  </a>
  <a href="https://wikipedia.org/wiki/Python_(programming_language)">
    <img src="https://img.shields.io/badge/language-python-blue.svg">
 </a>
  <a href="https://github.com/entynetproject/entropy">
      <img src="https://img.shields.io/badge/exploit-CNVD-red.svg?maxAge=2592000">
 </a>
  <a href="https://github.com/entynetproject/entropy/issues?q=is%3Aissue+is%3Aclosed">
      <img src="https://img.shields.io/github/issues/entynetproject/entropy.svg">
  </a>
  <a href="https://github.com/entynetproject/entropy/wiki">
      <img src="https://img.shields.io/badge/wiki%20-entropy-lightgrey.svg">
 </a>
  <a href="https://twitter.com/entynetproject">
    <img src="https://img.shields.io/badge/twitter-entynetproject-blue.svg">
 </a>
</p>

# Entropy exploit details

    Name      : Entropy Exploit
    Developer : Entynetproject
    Version   : v1.7 (entropy-v1.7-dev)
    Exploit   : Netwave and GoAhead IP Camera
    Site      : http://entynetproject.simplesite.com/

# About entropy exploit

    INFO: Entropy Exploit is an IP webcam exploit also named 
    Netwave and GoAhead IP Camera exploit. Entropy is a powerful 
    exploitation tool for webcams penetration testing.

# How to install entropy

    INFO: Entropy Exploit will be installed into /bin and 
    /usr/local/bin as /bin/entropy and /usr/local/bin/entropy!

> cd entropy

> chmod +x install.sh

> ./install.sh

# How to uninstall entropy

> cd entropy

> chmod +x uninstall.sh

> ./uninstall.sh

# How to execute entropy

> entropy -h

    usage: entropy [-h] [-b {1,2}] [-o OUTPUTFILE] [-T TIMEOUT] [-t TASKS]
                   [-c COUNT] [-q | -v]
                   [-i IP | -l INPUTFILE | --shodan SHODAN | --zoomeye ZOOMEYE]
                   [--update] [--details]

    optional arguments:
      -h, --help            show this help message and exit
      -b {1,2}, --brand {1,2}
                            Choose the brand of IP Camera. 1 - represents Netwave,
                            2 - represents GoAhead.
      -o OUTPUTFILE, --output OUTPUTFILE
                            Output into path you input. The default path in dir
                            /tmp
      -T TIMEOUT, --timeout TIMEOUT
                            The default timeout for netwave is 300s.
      -t TASKS, --task TASKS
                            Run TASKS number of connects in parallel, default is
                            10.
      -c COUNT, --count COUNT
                            The number of IP you want to get from ZoomEye. The
                            maximum is 2000. Default is 100.
      -q, --quiet           Quiet mode.
      -v, --verbose         Show more informations.
      -i IP, --ip IP        The camera's IP and port. Example: 192.168.1.100:80
      -l INPUTFILE, --list INPUTFILE
                            The camera's IP:port address file. The file's format
                            like this 192.168.1.100:80 in a line.
      --shodan SHODAN       Your Shodan API Key. You can get help from
                            https://www.shodan.io/
      --zoomeye ZOOMEYE     Your ZoomEye API Key. You can get help from
                            https://www.zoomeye.org/api
      -u, --update          Update Entropy Exploit.
      --details             Show Entropy Exploit details.

# Entropy exploit examples

> Example of the exploiting a single camera
    
    entropy -b 1 -i 192.168.1.100:80 -v  
    
> Example of the exploiting cameras from a file

    entropy -b 2 -l iplist.txt -v
    
> Example of the exploiting cameras using shodan

    entropy -b 2 -v --shodan PSKINdQe1GyxGgecYz2191H2JoS9qvgD

# Terms of use

    This tool is only for educational purposes only.
    Use this tool wisely and never without permission.
    I am not responsible for anything you do with this tool.

# Entropy MIT license

    MIT License

    Copyright (C) 2019, Entynetproject. All Rights Reserved.

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.

# Thats all!
