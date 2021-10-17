# ZachiNachshon Homebrew Tap

- [What is Homebrew?](#what-is-homebrew)
   - [What is a Tap?](#what-is-tap)
- [How to install pacakges from this Tap?](#installing-pacakges)
   - [Add a Tap to local brew](#add-tap-to-brew)
- [Available Packages](#available-packages)

<br>

<h2 id="what-is-homebrew">🍺 What is Homebrew?</h2>

Package manager for macOS (or Linux), see more at https://brew.sh

<br>

<h4 id="what-is-tap">What is a Tap?</h4>

A third-party (in relation to Homebrew) repository providing installable
packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

<br>

<h2 id="installing-pacakges">🍸 How to install pacakges from this Tap?</h2>

Install any package from this Tap directly via the following command:

```sh
brew install ZachiNachshon/tap/<pacakge-name>
```

<br>

<h4 id="add-tap-to-brew">Add a Tap to local brew</h4>

Tap can be added to a local brew in order to expose its available formulas within it in search results (`brew search` output):

1. Add the external Tap

   ```bash
   brew tap ZachiNachshon/tap
   ```

2. Install the package

   ```bash
   brew install <package-name>
   ```

   ***Note:** Make sure to always use the fully qualified name i.e. `ZachiNachshon/tap/` prefix when referring to a formula from an external tap.*

<br>

<h2 id="available-packages">🍻 Available Packages</h2>

With the following commands, you can install the latest version of each product:

| Package Name | Formula | Description |
| ------------   | ----------  | ------- |
| [`anchor`](https://github.com/ZachiNachshon/anchor) | `brew install ZachiNachshon/tap/anchor` | Dynamic versioned controlled remote marketplace for local / CI environments |

<br>