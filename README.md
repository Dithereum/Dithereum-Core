# Dithereum

[![N|Solid](https://dithereum.org/assets/images/DithereumIcon-White.png)](https://dithereum.org)



[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://dithereum.org)

## Instructions to setup Validator node

`Dithereum Validator Node` is very easy to install and deploy in a Docker container. This requires [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/) to run. 

### Step 1: Install Docker
```sh
sudo apt install docker && sudo apt install docker-compose
```

### Step 2: Clone the Github repository

```sh
git clone https://github.com/Dithereum/Dithereum-Core.git
```

### Step 3: Navigate into the directory where you've cloned this repository

```sh
cd Dithereum-Core/
```

### Step 4: Add your wallet's address, private key and password to docker-compose.yml file
There are `environment` & `args` on the line number 5 & 12 respectively, There are fields in `key: value` format
Simply copy paste your values save the file. 

- Open the docker-compose.yml file `nano docker-compose.yml` or you can use any other editor as well.
- Find the code snippet shown as below and add your wallet's private key and the password. 
- To paste in the `nano` editor you'll need to use this keyboard shortcut - `ctrl + shift + v`
- Now to save and exit from `nano` editor please do it this way - `ctrl + x`, press `y` and just hit `enter`

( ***For MAC users please use cmd instead of ctrl*** )

#### sample snippets
Add your wallet address in the environment as shown below
```
environment:
      address=921343c8cfW30d8caa70488884d532Ece203c045
```

then add the private key and the password as shown below
```
args:
        privatekey: f8fe0Fff5189aYYfd61fY753e8064E4fd6e6f8617b25MdcD7b4bD724f26f5
        password: 123456
```

### Step 5: Run the docker composer

```sh
sudo docker-compose up --build
```

Now wait for the docker image to be built and up...

### Step 6: Add peer
When the building process done successfully and the validator prompt running then you'll have to add the peer
as shown below. Get the enode and use it here.

```
admin.addPeer("enode://1484d9234da797d549dedecdf4b6a5adda997300cc82db630448aef12d102c2035ccc2f562624538bfa71555134e1c3c3c38df86d949e3249fee4a53ee476c66@157.245.95.240:32668")
```

You can directly paste in the running terminal using `ctrl + v` or `cmd + v` (for mac) and hit `enter`
And that's all.
