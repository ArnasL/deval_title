<?php
/**
 * DEVAL.LT © 2016 - 2025
 *
 * LICENSE NOTICE
 *
 * This file is the intellectual property of DEVAL® <WWW.DEVALSHOP.COM>. 
 * Any form of redistribution or reproduction of this code is strictly forbidden. 
 * The license provided grants permission to use this module on only one (1) store, domain, or website. 
 * For use on multiple stores, domains, or websites, additional licenses must be acquired.
 *
 * DISCLAIMER
 *
 * Property of brand DEVAL®. All Rights Reserved.
 *
 * @author    DEVAL® <info@devalshop.com>
 * @copyright DEVALSHOP.COM © 2025
 * @license   https://www.devalshop.com/ Commercial License
 * @version   1.0.0
 */

declare(strict_types=1);

if (!defined('_PS_VERSION_')) {
    exit;
}

class Deval_Title extends Module
{
    /** @var string Minimum required PHP version */
    const PHP_VERSION_MIN = '7.4';
    
    /** @var string Maximum supported PHP version */
    const PHP_VERSION_MAX = '8.4';
    
    /** @var string Current active tab in admin interface */
    private $current_tab = 'settings';

    /**
     * Module constructor
     * 
     * Initializes module properties and metadata
     */
    public function __construct()
    {
        $this->name = 'deval_title';
        $this->tab = 'seo';
        $this->version = '1.0.0';
        $this->author = 'DEVALSHOP.COM';
        $this->need_instance = 0;
        $this->ps_versions_compliancy = [
            'min' => '1.7.8.0',
            'max' => '9.0.3'
        ];
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Global title');
        $this->description = $this->l('Adds prefix or suffix to all pages titles.');
    }

    /**
     * Module installation
     * 
     * @return bool Installation success status
     */
    public function install(): bool
    {
        return parent::install() &&
            $this->registerHook('actionOutputHTMLBefore') &&
            $this->installConfiguration();
    }

    /**
     * Module uninstallation
     * 
     * @return bool Uninstallation success status
     */
    public function uninstall(): bool
    {
        return parent::uninstall() &&
            $this->uninstallConfiguration();
    }

    /**
     * Install module configuration values
     * 
     * @return bool Configuration installation success
     */
    protected function installConfiguration(): bool
    {
        // Non-multilang configs
        $default_config = [
            'DEVAL_TITLE_ENABLED' => 1,
            'DEVAL_TITLE_TYPE' => 'suffix',
            'DEVAL_TITLE_SEPARATOR' => ' - ',
        ];

        $success = true;
        foreach ($default_config as $key => $value) {
            $success = $success && Configuration::updateValue($key, $value);
        }
        
        // Multilang config - create empty values for all languages
        $languages = Language::getLanguages(false);
        $title_text_values = [];
        foreach ($languages as $language) {
            $title_text_values[$language['id_lang']] = '';
        }
        Configuration::updateValue('DEVAL_TITLE_TEXT', $title_text_values, true);
        
        return $success;
    }

    /**
     * Remove module configuration values
     * 
     * @return bool Configuration removal success
     */
    protected function uninstallConfiguration(): bool
    {
        $config_keys = [
            'DEVAL_TITLE_ENABLED',
            'DEVAL_TITLE_TYPE',
            'DEVAL_TITLE_TEXT',
            'DEVAL_TITLE_SEPARATOR',
        ];

        $success = true;
        foreach ($config_keys as $key) {
            $success = $success && Configuration::deleteByName($key);
        }
        
        return $success;
    }

    /**
     * Hook: actionOutputHTMLBefore
     * Modifies HTML output to change the <title> tag
     * 
     * @param array $params Hook parameters with 'html' key
     * @return void
     */
    public function hookActionOutputHTMLBefore(&$params): void
    {
        // Check if module is enabled
        if (!Configuration::get('DEVAL_TITLE_ENABLED')) {
            return;
        }

        // Get configuration
        $id_lang = (int)$this->context->language->id;
        $titleText = Configuration::get('DEVAL_TITLE_TEXT', $id_lang);
        $titleType = Configuration::get('DEVAL_TITLE_TYPE');
        $separator = Configuration::get('DEVAL_TITLE_SEPARATOR');

        // Skip if no title text is configured
        if (empty($titleText)) {
            return;
        }

        // Check if HTML output exists
        if (!isset($params['html']) || empty($params['html'])) {
            return;
        }

        // Find and replace the <title> tag content
        $pattern = '/<title>(.*?)<\/title>/is';
        
        if (preg_match($pattern, $params['html'], $matches)) {
            $currentTitle = $matches[1];
            
            // Build new title based on type
            if ($titleType === 'prefix') {
                $newTitle = $titleText . $separator . $currentTitle;
            } else {
                // Default to suffix
                $newTitle = $currentTitle . $separator . $titleText;
            }
            
            // Replace the title in HTML
            $params['html'] = preg_replace(
                $pattern,
                '<title>' . htmlspecialchars($newTitle, ENT_QUOTES, 'UTF-8') . '</title>',
                $params['html'],
                1
            );
        }
    }


    /**
     * Get module admin configuration page content
     * 
     * @return string HTML output for admin page
     */
    public function getContent(): string
    {
        $output = '';

        // Process configuration form submission
        if (Tools::isSubmit('submit' . $this->name)) {
            $output .= $this->processConfiguration();
        }

        // Get current tab from request
        $this->current_tab = Tools::getValue('current_tab', 'settings');

        // Render tabs interface
        return $output . $this->renderTabsInterface();
    }

    /**
     * Process configuration form submission
     * 
     * @return string HTML output (success/error messages)
     */
    private function processConfiguration(): string
    {
        // Save non-multilang fields
        $config_fields = [
            'DEVAL_TITLE_ENABLED' => (int)Tools::getValue('DEVAL_TITLE_ENABLED'),
            'DEVAL_TITLE_TYPE' => pSQL(Tools::getValue('DEVAL_TITLE_TYPE')),
            'DEVAL_TITLE_SEPARATOR' => pSQL(Tools::getValue('DEVAL_TITLE_SEPARATOR')),
        ];

        $success = true;
        foreach ($config_fields as $key => $value) {
            $success = $success && Configuration::updateValue($key, $value);
        }

        // Save multilang field (DEVAL_TITLE_TEXT)
        $languages = Language::getLanguages(false);
        $title_text_values = [];
        
        foreach ($languages as $language) {
            $title_text_values[$language['id_lang']] = pSQL(Tools::getValue('DEVAL_TITLE_TEXT_' . $language['id_lang']));
        }
        
        // Always returns true for multilang updates to avoid false negatives
        Configuration::updateValue('DEVAL_TITLE_TEXT', $title_text_values, true);
        $success = $success && true;

        return $success
            ? $this->displayConfirmation($this->l('Settings updated successfully!'))
            : $this->displayError($this->l('Error updating settings.'));
    }


    /**
     * Render settings form
     * 
     * @return string HTML output for settings form
     */
    protected function renderSettingsForm(): string
    {
        // Get all languages
        $languages = Language::getLanguages(false);
        $default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
        
        // Get title text for all languages
        $title_text_values = [];
        foreach ($languages as $language) {
            $title_text_values[$language['id_lang']] = Configuration::get('DEVAL_TITLE_TEXT', $language['id_lang']);
        }
        
        $this->context->smarty->assign([
            'module_dir' => $this->_path,
            'languages' => $languages,
            'default_lang' => $default_lang,
            'config' => [
                'enabled' => (bool)Configuration::get('DEVAL_TITLE_ENABLED'),
                'type' => Configuration::get('DEVAL_TITLE_TYPE'),
                'text' => $title_text_values,
                'separator' => Configuration::get('DEVAL_TITLE_SEPARATOR'),
            ],
        ]);

        return $this->context->smarty->fetch($this->getLocalPath() . 'views/templates/admin/settings.tpl');
    }

    /**
     * Render tutorial tab
     * 
     * @return string HTML output for tutorial tab
     */
    protected function renderTutorialTab(): string
    {
        return $this->context->smarty->fetch($this->getLocalPath() . 'views/templates/admin/tutorial.tpl');
    }

    /**
     * Render about tab
     * 
     * @return string HTML output for about tab
     */
    protected function renderAboutTab(): string
    {
        $this->context->smarty->assign([
            'module_version' => $this->version,
            'module_display_name' => $this->displayName,
            'php_version_min' => self::PHP_VERSION_MIN,
            'php_version_max' => self::PHP_VERSION_MAX,
            'ps_version_min' => $this->ps_versions_compliancy['min'],
            'ps_version_max' => implode('.', array_slice(explode('.', $this->ps_versions_compliancy['max']), 0, 3)),
        ]);

        return $this->context->smarty->fetch($this->getLocalPath() . 'views/templates/admin/about.tpl');
    }

    /**
     * Render tabs interface
     * 
     * @return string HTML output for complete admin interface
     */
    protected function renderTabsInterface(): string
    {
        $tabs = [
            'settings' => [
                'name' => $this->l('Settings'),
                'content' => $this->renderSettingsForm()
            ],
            'tutorial' => [
                'name' => $this->l('Tutorial'),
                'content' => $this->renderTutorialTab()
            ],
            'about' => [
                'name' => $this->l('Information & Support'),
                'content' => $this->renderAboutTab()
            ]
        ];

        $this->context->smarty->assign([
            'tabs' => $tabs,
            'current_tab' => $this->current_tab
        ]);

        return $this->context->smarty->fetch($this->getLocalPath() . 'views/templates/admin/configure.tpl');
    }
}
