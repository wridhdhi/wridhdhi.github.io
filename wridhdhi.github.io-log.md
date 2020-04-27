
# wridhdhi.github.io log/changes


- [x] ~~make a basic site using **console theme**~~
- [x] ~~make the build automatic while pushing to master using travis~~
- [x] ~~explore the barber-theme~~
- [x] ~~modified barber theme to change the present CODE theme~~ and deployed.
- [x] ~~understood site structure and changed config.yml of **barber theme**~~
- [ ] understand **app.min.js** and and **app.min.css**  and modify usng bootstrap.
- [ ] **add pages for collections and categories** AND MANAGE NAVIGATION.
- [ ] make a list for tags
- [ ] modify home page
- [ ] change **config.yml** for **disqus/mailchimp/and formcarry**
- [ ] **Look into kramdown and weird parsing of lists**

## v.0.1

1. designed the site structure and wil be made using jekyll so, if the plugins aren't supported we need to manually push it everytime.

2. cloned the repo to /home/Documents/website/wridhdhi.github.io

3. Site structure will be bilayer:
          - the **~master~** branch will have the build **_site**_ folder' contents pushed manually.
          - the **~sources~** branch will have the jekyll project folder to be build . This should contain the gemfile and gemfile.lock
    
4. Note the **_site**_ folder has ** touch .nojekyll** file which means github pages won't render/build it by default

## v0.1.1

1. created a Collection for GSOC and C++ coding
2. Create a layout for GSOC POSTS
3. created a tar of the old site on 21:10 @27th June 2019 and copy-pasted files from themes/barber/jekyll @wridhdhi branch
4. Re-init git and then pushed to github @ sources branch
5. **HOWEVER pushing a new theme caused conflicts** so resolve conflicts before push
6. added travis.yml to the root directory ; ' exclude - vendor ' in config.yml and push to sources; tavis will build automatically.

## v0.1.2

#### tags :
- GSOC
- quantum for all quantum posts
- code for posts that have code
- personal for posts that have rant
- project/work for any work
- illustration/graphic for creations

#### categories :
 - GSOC
 - Projects @ IISER
 - Personal Projects


# NOTES:

1. Always use ## for subheadings and `<blockquote>` tags for central blockquote , use `<p> and<cite> ` tags in the blockuote.
2. Always put image in the front-matter.


## Major changes missing

---

## Font changes

---



# v1.1.0
### Following changed 
- [x] Added navigation for physics and quantum posts
- [x] changed header title-repeat issue in ```<title>{% if page.title %}{{ page.title | escape }} <removed> {% else %}{{ site.title | escape }}{% endif %}</title>```
- [x] changed **icon ** of the main site``` <link rel="icon" type="image/x-icon" href="{{ '/assets/images/atom.ico' | prepend: site.baseurl }}">```
- [x] changed gradient of background in `typography.scss` also in the body
- [x] added lots of custom CSS, please change them in sass too. 
- [x] added css for badges classes=` badge badge-primary` and so on.
- [x] added shadow class from bootstrap for shadow classes=`posts__link shadow-lg p-3 mb-5 bg-white rounded` see the edits done in **`post card.html` in includes**.
- [x] added border css and also support for rounded borders, however they are added to the link **a href** tag to give the effect.
- [x] added padding inside post-cards and centered images by editing `post__img` class.
  
  ### TODO :
- [ ] Don't run gulp until you've added all the custom CSS to sass format.
- [ ] correct spelling errors in posts and refurbish
- [ ] add the quntum and physics scribble image
- [ ] start adding posts
- [ ] try adding CSS and shadow to navigation pane
- [ ] Images and the grid and flexbox method, but that's post midsem update. Until then no gulpfile.

- [ ] GET A CLEAR IDEA OF TEXT AND START UPLOADING CONTENT. 
- [ ] CREATE A HOME PAGE AND A SEPERATE PAGE FOR STORIES IN NAVIGATION.
- 








```python


```
