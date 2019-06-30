---
layout: post
title:  "Deplying your github website with Travis"
date:   2019-06-30 22:57:39 +0530
description:
categories: Logs
image: /assets/images/7-Travis_GHPages/travis-main.png
author: Wridhdhisom Karar
tags:
  - 
  - code
  - 
---
## Automate your github website using Travis

Now there are many many tutorials out there, honestly non of them worked for me. It all failed ; reasons below. This is an account of how I did it.

#### Requirements :
- You habe a github pages built using **jekyll**(or anything else)
- Your source code is on `sources` branch and you want built `_site` folder to be deployed on the master branch ; so that if anyone visits `{yourname}.github.io` , they see your site.
- I assume you use ` bundle exec jekyll build` in your root project directory to build your site and you copy/push "just" the `_site` folder to the repository to make the site live
-  and you want to automate this process using travis...

#### What you want :
Everytime you push to github/`sources` branch, **Travis** will build the site and deploy only the `_site` folder to `master` or any other `branch`.

![Placeholder](/assets/images/7-Travis_GHPages/workflow_github.jpg)

<font color="grey" size=2>
<a href=https://savaslabs.com/2016/10/25/deploy-jekyll-with-travis.html >Image rights and source </a>
</font>

#### What to do :
There should be `.travis.yml` file in the sources/project directory so that it automatically triggers a build when you push it ;
and deploys to the ` master` branch upon a successful build.

So , now go to <https://travis-ci.org> ; link your github account and turn on the repository containing your project files/where you want to deploy.

See the `.travis.yml` below. 

### Set Up GITHUB Token

get the GITHUB TOKEN from your github account `> settings > development > tokens`
and save it in the `ENV _VARIABLES` of the dashboard of that repository.


### Also MANDATORY
in the `_config.yml` of your jekyll site add the following line.

```yml
exclude:
  - vendor
```

>this must be in your `_config.yml` file because travis installs the gems in the `./vendor/bundle` folder. 

else that would always break builds like this and your site wont be built properly.

![Placeholder](/assets/images/7-Travis_GHPages/travis_not&#32;built.png#full)

---


# the  `.travis.yml` FILE

```yml

#This is travis script to auto build the site on  #source branch and deploy to mster branch
language: ruby

# add a ruby container
rvm:
  - 2.4.1
cache: bundler
  - 
#what should be done in the VM before install
before_install:
    - gem update --system
    - gem install bundler
    - 
#what to install and what script to run
#script contains : bundle install
#                  bundle exec jekyll build
script: ./CI/travis.sh


#this is to deploy from "sources" branch to "master" branch ; change on and target accordingly
deploy:
  provider: pages
  skip_cleanup: true
  github_token: $GITHUB_TOKEN  # Set in the settings page of your repository, as a secure variable
  keep_history: true
  on:
    branch: sources
  local_dir: _site
  target_branch: master
```



and `traviscibot` will deploy successfully.

![Placeholder](/assets/images/7-Travis_GHPages/built.png)