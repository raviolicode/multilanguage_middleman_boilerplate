Multi Language Blog with Middleman
===========================================================

Boilerplate to create a multi-language blog with Middleman

## Usage

### Initialize your Blog Repo
You need to create the repo, and clone it.

```
git clone https://github.com/raviolicode/multilanguage_middleman_boilerplate.git
cp -R multilanguage_middleman_boilerplate/* <YOUR GITHUB NAME>.github.io/
cd <YOUR GITHUB NAME>.github.io
bundle
```

### Create your Source branch
```
git checkout -b source
git commit -am "Initial commit"
git push -u origin source
```

### Push generated content to master branch

It uses [middleman-deploy](https://github.com/tvaughan/middleman-deploy) for deployment.
I'm assuming you will have only one repo with remote `origin`, a branch `source` with the source code, and we want to deploy to `master`. 

If you need to deploy to `github-pages` just change in `config.rb`:
```
deploy.branch = "github-pages"
```

To change other deployment options see the [Config Options in middleman-deploy](https://github.com/tvaughan/middleman-deploy/blob/master/USAGE).

### Deploy

```
middleman deploy
```

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
