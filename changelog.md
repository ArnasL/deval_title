# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-11-18

### Initial release
- Initial release of Global Title module
- Add global prefix or suffix to all page titles
- Customizable separator between title and text
- Enable/disable functionality
- Admin interface with tabbed configuration (Settings, Tutorial, About)
- Multi-language support (EN, LT)

### Features
- **Title Type Selection**: Choose between Prefix (beginning) or Suffix (end) placement
- **Custom Text**: Add any text to all page titles for branding
- **Flexible Separator**: Customize the separator character(s) between title and text
- **Easy Configuration**: Simple toggle switches and text inputs
- **SEO Optimization**: Improve branding and search engine visibility

### How It Works
- Uses `actionDispatcher` hook to modify page titles before rendering
- Works on ALL page types (products, categories, CMS, home, etc.)
- Minimal performance impact (no database queries on frontend)
- Compatible with full-page cache systems

### Technical Features
- PrestaShop 1.7.8.0+ to 9.0.0 compatibility
- PHP 7.4 - 8.4 support
- Modern PHP codebase with strict typing (declare(strict_types=1))
- Security-first development with proper input validation
- Bootstrap-based responsive admin interface
- Clean module structure following PrestaShop coding standards
- Proper installation/uninstallation hooks with configuration management
- Database queries with proper escaping and error handling
- Multi-shop and multi-language compatibility
- Performance optimized with efficient database queries
- Comprehensive error handling and fallback mechanisms

## Version Guidelines

- `[Major.Minor.Patch]`
- `Major`: Breaking changes
- `Minor`: New features, non-breaking
- `Patch`: Bug fixes and small improvements
