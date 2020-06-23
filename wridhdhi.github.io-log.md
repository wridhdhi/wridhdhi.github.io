- [wridhdhi.github.io log/changes](#wridhdhigithubio-logchanges)
  - [v.0.1](#v01)
  - [v0.1.1](#v011)
  - [v0.1.2](#v012)
- [Introducting tags : [fixed later]](#introducting-tags--fixed-later)
- [Categories : [fixed later]](#categories--fixed-later)
- [NOTES:](#notes)
  - [Major changes missing](#major-changes-missing)
  - [Font changes [Later done]](#font-changes-later-done)
- [v1.1.0](#v110)
    - [Following changed](#following-changed)
    - [TODO :](#todo-)
- [Updates in Lockdown 2020](#updates-in-lockdown-2020)
- [Keep in mind for developing](#keep-in-mind-for-developing)
- [Keep in mind while writing posts:](#keep-in-mind-while-writing-posts)
- [Places to change collections](#places-to-change-collections)
- [putting mathJaX and styling in head](#putting-mathjax-and-styling-in-head)
- [Jekyll text highlight](#jekyll-text-highlight)
- [Remmember Travis build](#remmember-travis-build)
  - [Travis permission issue](#travis-permission-issue)
- [Animation changes.](#animation-changes)

# wridhdhi.github.io log/changes


- [x] ~~make a basic site using **console theme**~~
- [x] ~~make the build automatic while pushing to master using travis~~
- [x] ~~explore the barber-theme~~
- [x] ~~modified barber theme to change the present CODE theme~~ and deployed.
- [x] ~~understood site structure and changed config.yml of **barber theme**~~
- [x] ~~understand **app.min.js** and and **app.min.css**  and modify usng bootstrap.~~
- [x] ~~**add pages for collections and categories** AND MANAGE NAVIGATION.~~
- [x] ~~make a list for tags~~
- [x] ~~modify home page~~
- [x] ~~change **config.yml** for **disqus/mailchimp/and formcarry**~~
- [x] ~~**Look into kramdown and weird parsing of lists**~~

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

# Introducting tags : [fixed later]
- GSOC
- quantum for all quantum posts
- code for posts that have code
- personal for posts that have rant
- project/work for any work
- illustration/graphic for creations

# Categories : [fixed later]
 - GSOC
 - Projects @ IISER
 - Personal Projects


# NOTES:

1. Always use ## for subheadings and `<blockquote>` tags for central blockquote , use `<p> and<cite> ` tags in the blockuote.
2. Always put image in the front-matter.


## Major changes missing

---

## Font changes [Later done]

---



# v1.1.0
### Following changed 
- [x] ~~Added navigation for physics and quantum posts~~
- [x] ~~changed **icon ** of the main site``` <link rel="icon" type="image/x-icon" href="{{ '/assets/images/atom.ico' | prepend: site.baseurl }}">```~~
- [x] ~~changed header title-repeat issue in ```<title>{% if page.title %}{{ page.title | escape }} <removed> {% else %}{{ site.title | escape }}{% endif %}</title>```~~
- [x] ~~changed gradient of background in `typography.scss` also in the body~~
- [x] ~~added lots of custom CSS, please change them in sass too. ~~
- [x] ~~added css for badges classes=` badge badge-primary` and so on.~~
- [x] ~~added shadow class from bootstrap for shadow classes=`posts__link shadow-lg p-3 mb-5 bg-white rounded` see the edits done in **`post card.html` in includes**.~~
- [x] ~~added border css and also support for rounded borders, however they are added to the link **a href** tag to give the effect.~~
- [x] ~~added padding inside post-cards and centered images by editing `post__img` class.~~
  
  ### TODO :
- [x] Don't run gulp until you've added all the custom CSS to sass format. `see extra-shadow-badge.css` for the extra CSS until its absorbed into gulp.
- [ ] correct spelling errors in posts and refurbish
- [ ] add the quntum and physics scribble images
- [ ] start adding posts
- [ ] try adding CSS and shadow to navigation pane
- [ ] Images and the grid and flexbox method, but that's post midsem update. Until then no gulpfile.

- [ ] GET A CLEAR IDEA OF TEXT AND START UPLOADING CONTENT. 
- [ ] CREATE A HOME PAGE AND A SEPERATE PAGE FOR STORIES IN NAVIGATION.


# Updates in Lockdown 2020
- [x] ~~Fonts structure updated to decide ; see [fonts changes](#font-changes) to see final decision on fonts.~~ ~~Add the required fonts and [Arial Nova]~~[3] (Arial nova proprietary font, not gonna push to github.) Fonts incorporated and added to app.scss
- [ ] ~~Study how salvattoreJS creates a [masonry using 3-colums][1]~~ C~~AN DO IT LATER AFTER JS/JQUERY~~ **DONE** check `posts.scss` and the salvattore website on how to make it work,
- [ ] ~~CSS design on `after and before` on the CSS data columns~~  ; *post__container* shows table content after, might be something with JS (ignore for now)
- [x] ~~fixed responsive line heights on sizes~~ (see typography,config,post,type_extends) for details
- [x] ~~added~~ metro-colors
- [x] ~~fixed the overflow-x giving rise to~~ horizontal scrollbars bug
- [x] ~~font sizes fixes for `mq-xlarge`~~ instead of `mq-small` being 1.25em , see in lists.scss/post.scss 
- [x] ~~Fix the fonts on the all the pages, and the margins and sizing.~~
- [ ] Add the font awesome icons and smileys for parsing since its already embedded in CSS
- [x] ~~added emojis see the list ~~
- [x] ~~Remove and fix the background linear gradient.~~,TODO **found  good color, until then patterns and rest remaining**
- [x] ~~Fix the monospace font size and highlighting to `Fira Code`~~ all margins and paddings done
- [ ] use code highlighting using prism.js
- [x] ~~Highlight code using [this link][4]~~(not doing this) DONE USING BORDER SHADOW
- [x] ~~fix the pre and code tags to light black and white, and fix its margins.DONE~~
- [x] ~~Fix and set the heading margins and font sizes.~~
- [x] ~~Fix white space around paragraph elements and invite more white space.~~
- [x] ~~set padding of `p-3` class to `1.5 1 1 1 rem`~~
- [x] ~~add the style to navbar li's `li a::hover,span::hover{text-decoration-line: underline; text-underline-position: under;}` sor underline effect~~, added a notch effect **BETTER UPDATE**
- [x] ~~work on building a main showcase, with a greet message.~~ **DONE**
- [ ] Work on a projects section.
- [ ] build a sidebar and archives
- [ ] For posts : build the side by side images and text layout 
- [x] ~~Learn how the widing images is done and the positioning~~ j**ust use `width:100vw`**
- [ ] put the post image as heading background-image and dim it,center it.
- [x] ~~work on css of the scrollbar~~ NOT DOING IT NOW ADVANCED/UNECESSARY
- [ ] Write an about me section properly.
- [x] ~~learn about tweet an fb embeds.~~**VERY EASY DONE**
- [x] ~~edit the post content, try to ad elongated post-images for better masonry, not landscape images always~~ **WORKS when height is greater than width**
- [x] ~~header bg-color `#ffc107`~~
- [x] ~~add lines after headings [like this page][2]~~ TOO much DECO,**LATER**
- [x] ~~Decide which headings to use for posts and their sizes.~~ **done**
- [x] ~~fix the background image of each post to cover and also overlay the back background behind the heading font.(use pseudo elements `after before`) an also use `hover::after` to darken the font and using position.~~ **Done using abolute position and mobile also**
- [x] ~~add karla font.~~
- [ ] add virtual scrollbars (optional)
- [ ] Fix collections and move into a folder.
- [x] ~~fix mathematics for kramdown ~~ added the mathjax cdn js in head-include and added styling for formula in base/math.scss ~~and also formatted~~
- [x]  ~~checkboxes doesn't work in kramdown be;auto disabled~~ (forms.scss) [See more](https://css-tricks.com/the-checkbox-hack/)
- [x]  ~~fixed list font sizes~~ (lists.scss)
- [ ] `grid` class with media query in post controls width, try to get a sidebar sidebar.
- [ ] add author and style on the heading
- [x] ~~fix responsivity~~
- [x] ~~see kramdown and add footnotes~~
- [x] ~~captions(beneath the text,immediately next line `*write the caption*) and citations added(for citation use `<cite>` or ass class `{: .cite}`)~~ **NEEDS FIXING**
- [x] ~~added caption under images~~
- [x] ~~add tooltip to headings.~~
- [x] ~~stylize hr~~
- [ ] Style the markdown area, create padding, and have a background patten like a section.
- [ ] Fix the sizing of layouts.to see 3 cols
- [ ] fix the responsive navbar
- [ ] remove and fix the work thingy
- [ ] **IMPORTANT**: Captions have to fixed
- [ ] add a background of nets and checks to showcase
- [ ] Adjust fonts for large screns using inspector at various sizes and change config.scss and typography.scss
- [x] ~~changed related `flex-align:flex-start`~~ . Dunno why was this not done ?
- [x] ~~fresh in zooming animaton effect~~ [GOOD GUIDANCE](https://stackoverflow.com/questions/44035457/using-css-transitions-to-create-a-specific-zoom-in-effect)




[1]: https://salvattore.js.org/
[2]: https://css-tricks.com/line-on-sides-headers/
[3]: https://stackoverflow.com/questions/41747557/how-to-add-a-ttf-font-file-from-web-in-sass-to-be-displayed-in-haml
[4]: https://medium.com/@mattlistor/highlight-effect-using-css-204ab4590480


# Keep in mind for developing
- `default.html` layout has body tag, the classes gets appended there. so edit that in posts.html.


# Keep in mind while writing posts:
1. The placeholder image on the posts card is potrait/landscape depending on whether the image width>height or not.
2. Put image using `![Placeholder]` tag only ~~not `![Image]`~~.
3. can't write a post with future date.
4. use single quotes for quotes.
5. category_post -> physics_post layout
6. rarely use h1 except at top, mostly use h2. subheadings h3, topic headings h4 , minor emphasis h5.
7. There is a seamless feature, of image just below a paragraph  with no gaps, makes it beautiful try that sometimes.
8. have a line break(return)after a blockquote
9. inlineMath: [ ['$', '$'], ~~["\(", "\)"]~~ ,displayMath: [ ['$$', '$$'], ~~["\[", "\]"] ~~]
10. Checkboxes don't work, they will be disabled beforehand,use just to show
11. there are 3 layouts. default:`post` , mostly the helvetica layout :`sansSerif_post` , mostly the georgia layout :`serif_post` use in the collections post for the required layout.Even you can use for personal posts.
12. captions are under images now, **press enter>just next line do a emph** text `* this is caption*` ->caption.
13. `<mark>` highligts blocks of code.


# Places to change collections
- config.yml
- layouts
- index.html of that category
- navigation
- style1/style2/style3 of the index page of the collections (note it must have same name as collections)


# putting mathJaX and styling in head
inline css cant override,must be done [with the config.](https://groups.google.com/forum/#!topic/mathjax-users/UYJl7cVT2iQ)
```html
<script type="text/x-mathjax-config">
    MathJax.Hub.Config({ showProcessingMessages: false,jax: ["input/TeX", "output/HTML-CSS"], tex2jax: { inlineMath: [ ['$', '$'], ["\(", "\)"] ], displayMath: [ ['$$', '$$'], ["\[", "\]"] ], processEscapes: true, skipTags: ['script', 'noscript', 'style',
    'textarea', 'pre', 'code'] }, styles: { "span.mjx-chtml.MJXc-display": { margin: "0em 0em 1.5em 0em !important" }, "span.mjx-chtml.MathJax_CHTML": { margin: "0em 0.5em 0em 0.5em !important","font-weight":"600" } }, "HTML-CSS":{preferredFont:"TeX",webFont:"STIX-Web",styles:
    { ".MathJax_Display": { "text-align": "center", margin: "0 0 1.5em 0" }}} });
</script>


<script type="text/javascript" async src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js?config=TeX-MML-AM_CHTML">
</script>
```

# Jekyll text highlight
looks like a tooltip on top
```scss
img {
            //when text just before image
            margin-bottom: 0.7rem;
            margin-top: 0.7rem;
            &+em {
                @extend %font-header; //weight 700
                display: inline-block; //underneath the img
                color: $color-darkgrey;
                font-size: $font-xxsmall; //0.7em
                font-style: normal;
                font-family: Roboto;
                // text-align: center;
                line-height: $base-lineheight;
                margin-top: 0;
                margin-bottom: 0.5em; //because its already in a p
                // // box-shadow: inset 0 -0.6em 0 $metro-yellow;
                text-align: right;
                line-height: 1.8em;
                margin-top: 0;
                position: relative;// for the highlight
            
            }
                &:after {
                    // content: "";
                    // width: 110%;
                    // height: .7em;
                    // position: absolute;
                    // left: 0;
                    // z-index: -1;
                    // background-color: #FFEB3B;
                    // bottom: .2em;
                    //-----------------------Style middle and top
                    content: "";
                    width: 100%;
                    height: $font-xxsmall;
                    position: absolute;
                    left: 0;
                    z-index: -1;
                    background-color: #9C27B0;
                    bottom: 2.4em;//set because 0.7em+0.7em
                }
            }
```

# Remmember Travis build
never touch `Gemfile.lock`
- use `bundle install` always
also soon you might have to update the system.
## Travis permission issue
Travis is trying to run a file ./config/travis/build.sh, but it doesn't have permissions to execute that file.You'll need to give it permissions depending on where run-checks.sh lives. If this is something from your repo, you can give it permission to execute with:
```bash
git update-index --add --chmod=+x ./config/travis/run-checks.sh
git commit -m "Added permissions for run-checks.sh"
git push
```
If it's a script that's only available and found in travis' own environment, then you'll need travis to execute giving the permission.
```yml
before_script:
  - chmod +x build.sh
```

# Animation changes.
- never use too slow, 300ms is decent.
- the image expands more than the container shrinks this is important fr the effect to be proper.
- notices the height and weidth scale slowley /fastly if there is too much difference.
- the margin on bottom was ruining everything.
```scss
 .post__link {
        display: block;
        color: $color-black;
        &:hover {
            // transform: scale(1.01);
            .posts__img {
                transform: scale(1.3);
                .post__img__container {
                    transform: scale(0.95);
                }
            }
        }
    }
.post__img {
        margin-bottom: 1em; // THIS IS RUINING EVERYTHING !!!!!!!!!!!!!!!!!!!!!
        // background-color: $color-lightgrey;
        transition: transform .3s ease-in-out;
        img {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .post__img__container {
            overflow: hidden;
            transition: transform .3s ease-in-out;
        }
```