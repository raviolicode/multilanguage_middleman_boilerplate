Multi Language Blog with Middleman!!
===========================================================

Boilerplate to create a multi-language blog with [Middleman](https://github.com/middleman/middleman), and publish to [Github Pages](https://pages.github.com) or [BitBucket](https://bitbucket.org).

From now on, we'll call `REPO_NAME`:
* If deploying to [GitHub Pages](https://pages.github.com): `<GITHUB USER NAME>.github.io`
* If deploying to [BitBucket](https://bitbucket.org): `<BITBUCKET USER NAME>.bitbucket.org`

## Setup

1. Create your personal site repo `REPO_NAME` in GitHub and clone it locally.

2. Clone the Boilerplate:

  ```
  git clone https://github.com/raviolicode/multilanguage_middleman_boilerplate.git
  ```

3. Initialize the boilerplate into your repo:

  ```
  cd multilanguage_middleman_boilerplate
  REPO=~/code/REPO_NAME rake init
  cd ~/code/REPO_NAME
  ```

5.  Commit the boilerplate files on the `source` branch:

  ```
  git commit -am "Initial commit"
  git push -u origin source
  ```

6. Deploy to Github Pages:

  ```
  middleman deploy
  ```
  
7. See your blog published at `https://<YOUR GITHUB NAME>.github.io`

## Customize and use your Blog

To add articles or edit layouts, you need to be on the `source` branch:
```
git checkout source
```
After making changes, commit and push them:
```
git push origin source
```
Then deploy it:
```
middleman deploy
```

## Deployment Customization


If you're using Git need to deploy to `github-pages` just change in `config.rb`:
```
deploy.branch = "github-pages"
```

To change other deployment options see the [Config Options in middleman-deploy](https://github.com/tvaughan/middleman-deploy/blob/master/USAGE).

## Adding CSS Frameworks

There are several [Middleman Frontend Templates](http://directory.middlemanapp.com/#/templates/all) to choose from.
Customizations using Templates is easy, but can't be automated.

To add a particular Template, just copy/overwrite the corresponding directories and files into the repo.
Note that `source/calendar.html.erb` and `source/tag.erb` will no longer work, those files will need changes in the extension and markup in order to match the look and feel.
