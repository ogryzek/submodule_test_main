# Submodule Test

This project consists of 3 repos; this is the main repo. The other two are submodule_test_client, which this repo sources as a submodule to build the client, which is served in the server `static/` directory. And, the submodule_test_server is the other repository used, which is also a submodule. Let's see how it goes!  
  
## Using this Repo

```sh
# CLONE

# clone the repo and cd into it
git clone git@github.com:ogryzek/submodule_test_main.git && cd submodule_test_main
# initialize submodules
git submodule init

# update the submodules
git submodule update

# alternative syntax (one-liner)
git clone --recuse-submodules git@github.com:ogryzek/submodule_test_main.git && cd submodule_test_main

# --------------------------------------------------------

# UPDATE

# pull in changes made on upstream repos
git submodule update --remote
```

The [.gitmodules](https://github.com/ogryzek/submodule_test_main/blob/master/.gitmodules) settings file shows that the branch being used by each of the submodule repos is `mono`.  


