# iOS Claude Plugins Marketplace

A curated collection of Claude Code plugins for iOS/Swift development.

## Plugins

| Plugin | Description |
|--------|-------------|
| **clean-architecture-ios** | Clean Architecture and SOLID principles for iOS/Swift |
| **ios-design-patterns** | Design patterns (Adapter, Composite, Strategy, Factory, Presenter, Proxy, etc.) |
| **tdd** | Test-Driven Development with comprehensive iOS/Swift testing patterns |

## Installation

Install the marketplace in Claude Code:

```
claude plugin install --marketplace https://github.com/naudecruywagen/ios-claude-plugins
```

Or install individual plugins from their source repos:

- [clean-architecture-ios](https://github.com/naudecruywagen/clean-architecture-ios)
- [ios-design-patterns](https://github.com/naudecruywagen/ios-design-patterns)
- [tdd-skill](https://github.com/naudecruywagen/tdd-skill)

## Development

Each plugin lives in its own repo and is included here as a git submodule under `plugins/`.

### Updating plugins

```bash
git submodule update --remote --merge
```

### Building the marketplace ZIP

```bash
./scripts/package.sh
```

### Releasing

Tag a version to trigger the GitHub Actions release workflow:

```bash
git tag v1.0.0
git push origin v1.0.0
```

## License

MIT
