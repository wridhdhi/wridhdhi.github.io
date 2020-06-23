---
layout: sansSerif_post
title:  "Professional font testing Post with lots of</br> unnecessary words so that we get </br> multiple lines "
date:   2020-04-22 22:57:39 +0530
description:
categories: Logs
image: /assets/images/placeholder-17.jpg
author: Wridhdhisom Karar
badge: 
  - simulation
  - experiment
  - code
tags:
  - 
  - code
  - 
---
# Biggest heading h1

Now there are many many tutorials out there, honestly non of them worked for me. It all failed ; reasons below. This is an account of how I did it.
![Placeholder](/assets/images/placeholder-3.jpg)
## Smaller heading h2 :
- You habe a github pages built using **jekyll** (or anything else)
- Your source code is on `sources` branch and you want built `_site` folder to be deployed on the master branch ; so that if anyone visits `{yourname}.github.io` , they see your site.
- I assume you use `bundle exec jekyll build` in your root project directory to [build your site and you][^1] copy/push "just" the `_site` folder to the repository to make the site live
-  and you want to automate this process using travis...

[^1]: http://www.google.com

## What you want :
Everytime you push to github/`sources` branch, **Travis** will build the site and deploy only the `_site` folder to `master` or any other `branch`.

![Placeholder](/assets/images/7-Travis_GHPages/workflow_github.jpg)


##### savaslabs.com/2016/10/25/deploy-jekyll-with-travis.html 

---

##### h4:heading ink your github account and turn on the repository containing your project files/where you want to deploy.

###### a h6 eading ink your github account and turn on the repository containing your project files/where you want to deploy.

##### a h eading ink your github account and turn on the repository containing your project files/where you want to deploy.
:
There should be `.travis.yml` file in the sources/project directory so that it automatically triggers a build when you push it ;
and deploys to the ` master` branch upon a successful build.

So , now go to <https://travis-ci.org> ; link your github account and turn on the repository containing your project files/where you want to deploy.

See the `.travis.yml` below. 

---

### a tiny h3 heading see this eading ink your github account and turn on the repository containing your project files/where you want to deploy.

get the GITHUB TOKEN from your github account `> settings > development > tokens`
and save it in the `ENV _VARIABLES` of the dashboard of that repository.
1. You habe a github pages built using **jekyll**(or anything else)
2. Your source code is on `sources` branch and you want built `_site` folder to be deployed on the master branch ; so that if anyone visits `{yourname}.github.io` , they see your site.
3. I assume you use ` bundle exec jekyll build` in your root project directory to build your site and you copy/push "just" the `_site` folder to the repository to make the site live
4.  and you want to automate this process using travis...

### Also this one is a h3
{: .thicc}

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

Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis alias obcaecati rem repellendus delectus rerum error perspiciatis aspernatur odit esse vero ut dolorem, maxime, officia eaque doloribus magni dolores necessitatibus reiciendis laudantium eos quis eligendi cumque nihil. Consequatur hic beatae nulla veritatis. Quibusdam ab libero nesciunt accusantium iste nisi quam, eos officia neque corporis? Vel vitae eaque, maxime praesentium earum perspiciatis, aperiam quae omnis fugiat nostrum repellat debitis pariatur id excepturi possimus ipsa expedita? Et quis blanditiis sit nam repudiandae, id nisi iste dignissimos illo totam qui delectus voluptatem, quo corporis necessitatibus, non eveniet provident mollitia amet culpa debitis? Voluptatibus.


# big heading h1
## subheading h2
### sub-sub heading h3
#### sub- sub-subheading h4
###### This is a stupid h5 heading
###### There is no h6


---

Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis alias obcaecati rem repellendus delectus rerum error perspiciatis aspernatur odit esse vero ut dolorem, maxime, officia eaque doloribus magni dolores necessitatibus reiciendis laudantium eos quis eligendi cumque nihil. Consequatur hic beatae nulla veritatis. Quibusdam ab libero nesciunt accusantium iste nisi quam, eos officia neque corporis? [Vel vitae eaque](www.google.com), maxime praesentium earum perspiciatis, aperiam quae omnis fugiat nostrum repellat debitis pariatur id excepturi possimus ipsa expedita? Et quis blanditiis sit nam repudiandae, id nisi iste dignissimos illo totam qui delectus voluptatem, quo corporis necessitatibus, non eveniet provident mollitia amet culpa debitis? Voluptatibus.
![Placeholder](/assets/images/placeholder-11.jpg)Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia recusandae aperiam, maiores quis quidem ipsa debitis veritatis aliquam culpa sapiente voluptas laboriosam pariatur ratione dignissimos magnam! Molestias laborum placeat sequi voluptatem et! Delectus debitis explicabo nihil vero iure officia? Impedit est, cupiditate cum beatae perferendis consequuntur veritatis ipsum quod iusto nostrum doloribus illo illum eos modi maxime asperiores facere voluptas culpa distinctio voluptates nihil non eaque molestiae ullam! Sed consectetur culpa voluptatem reprehenderit per
   
   a nested list makes a huge mess
   - parent list item
     - parent sublist
     - sublist item 2
     - sublist 3
       - subsub list item 1
       - sublist 32
     - go back to paent listing
   - go back to mother lignsjsfng
   - aedkmndk dfjn d ojkfd 
     - kndf
     - knfdfd fdm
   - knfdfdf
  
  ---

  Also in these sense take a look at checklist and mathematix

  - [ ] Check item number 1
  - [ ] check item number 3
  - [x] to done so we check it off
  - [ ] this is again not done so we need to uncheck


## Subheading of maths

### Lets see how matehmatics does here

ferendis obcaecati suscipit explicabo officia laboriosam maxime odit voluptatum eius doloribus totam ad, corrupti quaerat blanditiis quis vel, porro earum sit temporibus! Officia odit incidunt quaerat cumque 
>This is basic blockquot

exercitationem assumenda nulla blanditiis ipsum repellat optio a molestias enim temporibus, $$ \sqrt{x} + \lambda y =\frac{x^2}{y}$$repudian


$$\int_0^\infty a^2 x^3 xd = my + c $$

$$
\begin{equation}
  \int_0^\infty a^2 x^3 xd = my + c 
\end{equation}
$$
   
   
   ferendis obcaecati suscipit explicabo officia laboriosam maxime odit INLINE $ y=\gamma a + \frac{b}{c} $ voluptatum eius doloribus totam ad, corrupti quaerat blanditiis quis vel, porro earum sit temporibus! Officia odit incidunt quaerat cumque exercitationem assumenda nulla blanditiis ipsum repellat optio a molestias enim temporibus, repudiandae dolore laudantium reprehenderit consequatur maiores ipsa ratione deserunt! Nemo dignissimos, pariatur sunt quibusdam est excepturi voluptate iste quas laudantium suscipit ab dolorem numquam repellendus odio laborum delectus blanditiis aspernatur labore explicabo asperiores harum consequuntur. Asperiores deserunt eius veritatis?


