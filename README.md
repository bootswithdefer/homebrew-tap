# homebrew-tap

Homebrew tap for [bootswithdefer](https://github.com/bootswithdefer) projects.

## Available

### awless

A powerful CLI to manage AWS, with a template DSL, revertible actions and offline
resource graphs. A modernized fork of [wallix/awless](https://github.com/wallix/awless).

```sh
brew install --cask bootswithdefer/tap/awless
```

Upgrade with:

```sh
brew upgrade --cask awless
```

Source: [bootswithdefer/awless](https://github.com/bootswithdefer/awless)

## Why casks rather than formulae

These ship pre-built binaries. Homebrew reserves formulae for software compiled from
source and expects pre-compiled artifacts to be distributed as casks, so the casks live
in `Casks/` and are installed with `--cask`.

## How this tap is maintained

The cask files here are generated, not hand-edited. Each project's release pipeline runs
[GoReleaser](https://goreleaser.com), which builds the release artifacts, computes their
checksums and commits the updated cask to this repository.

Editing a file in `Casks/` by hand will be overwritten by the next release. Changes
belong in the source project's `.goreleaser.yml`.
