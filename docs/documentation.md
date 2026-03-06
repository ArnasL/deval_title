# DEVAL - Global Title

## Description
Add a global prefix or suffix to all page titles across your PrestaShop store for better branding and SEO.

## Features
- ✅ Add prefix or suffix to all page titles
- ✅ Customizable separator between title and text
- ✅ Enable/disable functionality
- ✅ Multi-language support
- ✅ Multi-shop compatible
- ✅ Clean admin interface with tabs

## How It Works

1. **Hook Registration:** Module registers to `actionDispatcher` hook during installation
2. **Title Modification:** On every page load, the hook checks if module is enabled
3. **Configuration Check:** Retrieves saved settings (type, text, separator)
4. **Title Building:** Constructs new title based on type (prefix/suffix)
5. **Application:** Updates `$this->context->controller->meta_title` with new title

## Best Practices

### SEO Recommendations
- Keep title text short (under 60 characters total)
- Use descriptive, brand-relevant text
- Consider using separator like ` - `, ` | `, or ` :: `
- Test on different page types to ensure good results

### Performance
- Module uses minimal resources (single hook, simple string operations)
- No database queries on frontend (uses Configuration cache)
- Compatible with full-page cache systems
