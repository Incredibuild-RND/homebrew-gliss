# Gliss Homebrew tap

The `gliss` command-line client for [Gliss](https://glissando.dev), for macOS and Linux.

```sh
brew install incredibuild-rnd/gliss/gliss
```

`brew upgrade gliss` keeps it current. Then run `gliss login`. The docs are at [docs.glissando.dev](https://docs.glissando.dev).

| Formula | Channel |
|---|---|
| `gliss` | The released client, from `https://get.glissando.dev/cli/` |
| `gliss-preprod` | The preprod channel, for testing Gliss before release. It conflicts with `gliss`, because both install the `gliss` command |

## How the formulas are made

Each formula is rendered by the Gliss release workflow from that release's `SHA256SUMS`, after its signature has been verified against the pinned release key. Homebrew then checks each download against those SHA-256s. Don't edit the formulas by hand: a release replaces them.
