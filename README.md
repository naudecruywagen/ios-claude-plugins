# iOS Claude Plugins Marketplace

A personal collection of Claude Code plugins for iOS/Swift development.

> **Note:** This is a private marketplace. The plugin source repos are private and not publicly available. This repo is public only so Claude Desktop can read the marketplace manifest.

## Plugins

| Plugin | Description |
|--------|-------------|
| **clean-architecture-ios** | Clean Architecture and SOLID principles for iOS/Swift |
| **ios-design-patterns** | Design patterns (Adapter, Composite, Strategy, Factory, Presenter, Proxy, etc.) |
| **tdd** | Test-Driven Development with comprehensive iOS/Swift testing patterns |
| **swift-concurrency** | Swift Concurrency: async/await, actors, Sendable conformance, Swift 6 migration |
| **swiftui-expert** | SwiftUI state management, view composition, performance, Liquid Glass patterns |
| **xcode-preview-driven-ui** | Use Xcode's preview rendering to iterate on SwiftUI UI changes visually |

## Development

Each plugin lives in its own private repo and is included here as a git submodule under `plugins/`.

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
git tag v1.0.x
git push origin v1.0.x
```

## License

MIT
