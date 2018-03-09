# crystal_party

Barebones basic crystal web app.

# Making a new app 

The steps I followed to build this repo:

**1.** **Install Crystal**

On mac that's:

```
brew update
brew install crystal-lang
```


**2.** **Create a new project**

`crystal init app [Project name]`

**3.** **Add Kemal (a web framework) to your `shard.yml` file**:

My shard file looks like:

```

name: [Project name]
version: 0.1.0

authors:
  - Nathan Willson <willson.b.nathan@gmail.com>

targets:
  battlesnake_crystal:
    main: src/battlesnake_crystal.cr

crystal: 0.24.1

license: MIT

dependencies:
  kemal:
    github: kemalcr/kemal

```

**4.** **Install your dependancies** with `crystal deps`

**5.** **Add a web endpoint and start Kemal**

Replace `src/[Project name].cr`:

```
require "kemal"

get "/" do
  "AppColony does Crystal!"
end
```

**6.** From the root directory of your project, you can **run your project using**:

`crystal run src/[Project name].cr`

Now visit `http://localhost:3000`

**7.** What we really want is **hot reloading**. So install [sentry](https://github.com/samueleaton/sentry)

The tl;dr is run:

`curl -fsSLo- https://raw.githubusercontent.com/samueleaton/sentry/master/install.cr | crystal eval`

Then in your home folder run:

`./sentry`

That's it! Any changes will trigger automatic recompile.


## Installation Issues

If you run into a libssl issue, try:
`https://github.com/crystal-lang/crystal/issues/4745#issuecomment-332553374`

# Resources

[ Starting Crystal with Kemal ](https://hackernoon.com/starting-a-project-with-crystal-and-kemal-90e2647e6c3b)
