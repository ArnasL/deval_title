# DEVAL - Global Title

- **Version:** 1.0.0  
- **Author:** DEVAL® <info@devalshop.com>  
- **License:** Commercial License  
- **PrestaShop Compatibility:** 1.7.8.0 - 9.0.3  
- **PHP Compatibility:** 7.4 - 8.4  

## 📋 Description

Add a global prefix or suffix to all page titles across your PrestaShop store for better branding and SEO.

## ✨ Features

- ✅ **Title Modification** — Add a prefix or suffix to all page titles  
- ✅ **Customizable Separator** — Add custom separators (e.g., `-`, `|`, `::`) between page titles and your brand name
- ✅ **Quick Toggle** — Easily enable or disable the functionality without uninstalling
- ✅ **Multi-language Support** — Configure unique title texts for every language on your store
- ✅ **Multi-shop Compatible** — Works seamlessly across multi-store configurations
- ✅ **Performance Optimized** — Uses minimal resources via a single hook and configuration cache without extra database queries

## 📦 Installation

1. Download the module ZIP file
2. Go to PrestaShop Admin → Modules → Module Manager
3. Click "Upload a module"
4. Select the ZIP file and upload
5. Click "Install" when the module appears
6. Configure the module in Modules → Global title → Configure

## 🔧 Configuration Options

### Settings

| Option | Description | Default |
|---|---|---|
| Enable global title | Turn global title modification on/off | Yes |
| Format type | Add text as a prefix or suffix | Suffix |
| Separator | Text separator (e.g. ` - `) | ` - ` |
| Title text | The text to append or prepend | (Empty) |

## 🔒 Security & Privacy

- **Input Validation** — All user inputs validated and sanitized
- **SQL Injection Prevention** — Uses built-in PS methods for storing configurations safely
- **XSS Protection** — Output escaping used on frontend HTML modification (`htmlspecialchars`)
- **CSRF Protection** — PrestaShop token validation on all form submissions
- **No Personal Data Collected** — Operations performed exclusively on global metadata

## 📱 Browser Compatibility

- ✅ Chrome 90+
- ✅ Firefox 90+
- ✅ Safari 14+
- ✅ Edge 90+
- ✅ Mobile browsers compatible

## 🌍 Multilingual & Multi-shop

- Full multi-language support for title texts
- Multi-shop compatible
- Easy to extend via PrestaShop translation files

## 🆘 Troubleshooting

### Titles don't change

1. Check "Enable global title" is set to Yes in configuration
2. Verify you have input a text value for your current language
3. Clear PrestaShop cache (Advanced Parameters → Performance)
4. Ensure no other SEO modules are overwriting the meta titles

## 📞 Support

For support, custom development, or questions:

- **Email:** <info@devalshop.com>
- **Website:** <https://www.devalshop.com>
- **Documentation:** See [README.md](README.md) or [documentation.md](docs/documentation.md)

## 📝 Changelog

See [changelog.md](changelog.md) for version history and updates.

## 🔄 Roadmap

### v1.1.0 (Planned)

- Specific page exclusion (e.g. excluding cart or checkout pages)
- Category formatting rules

## 📄 License

This module is licensed under a Commercial License.  

**Copyright © 2026 DEVALSHOP.COM.**
All Rights Reserved.

This software is the intellectual property of DEVAL®. Any form of redistribution or reproduction is strictly forbidden. The license grants permission to use this module on only one (1) store, domain, or website. For use on multiple stores, additional licenses must be acquired.

## 🏆 Credits

- Developed by **DEVAL®**
- Website: **<https://www.devalshop.com>**
- Email: **<info@devalshop.com>**

---

**Thank you for choosing Global Title by DEVAL®!** 🎉
