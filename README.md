Multi Language Blog with Middleman
===========================================================

Boilerplate to create a multi-language blog with Middleman.
Markdown posts are managed from the `source` branch, and code for deployment is in `master`.

From now on, we'll call `REPO_NAME` to `<YOUR GITHUB NAME>.github.io` if deploying to [GitHub Pages](https://pages.github.com).

## Usage

1. Create your personal site repo `REPO_NAME` in GitHub and clone it locally.

2. Clone the Boilerplate

  ```
  git clone https://github.com/raviolicode/multilanguage_middleman_boilerplate.git
  ```

3. Initialize the boilerplate into your repo:

  ```
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

## Deployment Customization

It uses [middleman-deploy](https://github.com/tvaughan/middleman-deploy) for deployment.
I'm assuming you will have only one repo with remote `origin`, a branch `source` with the source code, and we want to deploy to `master`. 

If you're using Git need to deploy to `github-pages` just change in `config.rb`:
```
deploy.branch = "github-pages"
```

To change other deployment options see the [Config Options in middleman-deploy](https://github.com/tvaughan/middleman-deploy/blob/master/USAGE).


## Workflow to Customize your Blog

Your source code from Middleman will be on the `source` branch.
```
git checkout source
```
After making changes, commit and push to your `source` branch:
```
git push origin source
```
Then deploy it:
```
middleman deploy
```
