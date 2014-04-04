Multi Language Blog with Middleman
===========================================================

Boilerplate to create a multi-language blog with Middleman

## Usage

### Initialize your Blog Repo

You need to create the repo, and clone it.

```
git clone https://github.com/raviolicode/multilanguage_middleman_boilerplate.git
```

Initialize the boilerplate into your repo:
```
REPO_NAME=~/code/<YOUR GITHUB NAME>.github.io rake init
```

This will:
* copy the boilerplate into your blog repo
* run bundle
* create the `source` branch
* add all the files to staging in Git


### Push your the boilerplate to your branch
``` 
cd ~/code/<YOUR GITHUB NAME>.github.io
```

You can edit the boilerplate like any Middleman app. Then commit and push your changes.
```
git commit -am "Initial commit"
git push -u origin source
```


### Deploy

Once you are happy with your changes, you can deploy it to Github Pages.

```
middleman deploy
```


## Deployment Configuration

It uses [middleman-deploy](https://github.com/tvaughan/middleman-deploy) for deployment.
I'm assuming you will have only one repo with remote `origin`, a branch `source` with the source code, and we want to deploy to `master`. 

If you need to deploy to `github-pages` just change in `config.rb`:
```
deploy.branch = "github-pages"
```

To change other deployment options see the [Config Options in middleman-deploy](https://github.com/tvaughan/middleman-deploy/blob/master/USAGE).


### See your blog published!
Boilerplate is now published in `https://<YOUR GITHUB NAME>.github.io`

## Workflow to Customize your Blog

### Edit Middleman Posts / Frontend
Your source code from Middleman will be on the `source` branch.
```
git checkout -b source
```
After you change all you need, you will commit your changes and push it to your `source` branch:
```
git push origin source
```

### Deploy
When you're ready to deploy, just:
```
middleman deploy
```
