{*
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
*}

{* Main Configuration Form *}
<form method="post" action="" class="defaultForm form-horizontal">
    
    {* Section 1: General Settings *}
    <div class="panel">
        <div class="panel-heading">
            <i class="icon-cogs"></i> {l s='General Settings' mod='deval_title'}
        </div>
        <div class="panel-body">
            <div class="alert alert-info">
                <p><strong>{l s='About this module' mod='deval_title'}</strong></p>
                <p>{l s='This module allows you to add a global prefix or suffix to all page titles across your store. This is useful for branding and SEO purposes.' mod='deval_title'}</p>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-3">
                    {l s='Enable Module' mod='deval_title'}
                </label>
                <div class="col-lg-9">
                    <span class="switch prestashop-switch fixed-width-lg">
                        <input type="radio" name="DEVAL_TITLE_ENABLED" id="enabled_on" value="1" {if $config.enabled}checked="checked"{/if}>
                        <label for="enabled_on">{l s='Yes' mod='deval_title'}</label>
                        <input type="radio" name="DEVAL_TITLE_ENABLED" id="enabled_off" value="0" {if !$config.enabled}checked="checked"{/if}>
                        <label for="enabled_off">{l s='No' mod='deval_title'}</label>
                        <a class="slide-button btn"></a>
                    </span>
                    <p class="help-block">
                        {l s='Enable or disable the global title modification' mod='deval_title'}
                    </p>
                </div>
            </div>
        </div>
    </div>

    {* Section 2: Title Configuration *}
    <div class="panel">
        <div class="panel-heading">
            <i class="icon-font"></i> {l s='Title Configuration' mod='deval_title'}
        </div>
        <div class="panel-body">
            
            <div class="form-group">
                <label class="control-label col-lg-3 required">
                    {l s='Title Type' mod='deval_title'}
                </label>
                <div class="col-lg-9">
                    <select name="DEVAL_TITLE_TYPE" class="form-control fixed-width-xl">
                        <option value="suffix" {if $config.type == 'suffix'}selected="selected"{/if}>
                            {l s='Suffix (at the end)' mod='deval_title'}
                        </option>
                        <option value="prefix" {if $config.type == 'prefix'}selected="selected"{/if}>
                            {l s='Prefix (at the beginning)' mod='deval_title'}
                        </option>
                    </select>
                    <p class="help-block">
                        {l s='Choose whether to add the text as a prefix (before) or suffix (after) the page title' mod='deval_title'}
                    </p>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-3 required">
                    {l s='Title Text' mod='deval_title'}
                </label>
                <div class="col-lg-9">
                    {foreach from=$languages item=language}
                        <div class="translatable-field lang-{$language.id_lang}" style="display: {if $language.id_lang == $default_lang}block{else}none{/if}; margin-bottom: 0;">
                            <div class="col-lg-9" style="padding-left: 0;">
                                <input type="text" 
                                       name="DEVAL_TITLE_TEXT_{$language.id_lang}" 
                                       class="form-control" 
                                       value="{if isset($config.text[$language.id_lang])}{$config.text[$language.id_lang]|escape:'html':'UTF-8'}{/if}" 
                                       placeholder="{l s='e.g., My Shop Name' mod='deval_title'}">
                            </div>
                            <div class="col-lg-2">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" tabindex="-1">
                                    {$language.iso_code}
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    {foreach from=$languages item=lang}
                                        <li>
                                            <a href="javascript:hideOtherLanguage({$lang.id_lang});" tabindex="-1">{$lang.name}</a>
                                        </li>
                                    {/foreach}
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    {/foreach}
                    <p class="help-block" style="clear: both;">
                        {l s='Enter the text you want to add to all page titles' mod='deval_title'}
                    </p>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-3">
                    {l s='Separator' mod='deval_title'}
                </label>
                <div class="col-lg-9">
                    <input type="text" 
                           name="DEVAL_TITLE_SEPARATOR" 
                           class="form-control fixed-width-sm" 
                           value="{$config.separator|escape:'html':'UTF-8'}" 
                           placeholder=" - ">
                    <p class="help-block">
                        {l s='Character(s) to separate the page title from your text (default: " - ")' mod='deval_title'}
                    </p>
                </div>
            </div>

            <div class="alert alert-success">
                <p><strong><i class="icon-lightbulb"></i> {l s='Preview Examples:' mod='deval_title'}</strong></p>
                <ul>
                    <li><strong>{l s='Suffix:' mod='deval_title'}</strong> <code>{l s='Product Name - My Shop' mod='deval_title'}</code></li>
                    <li><strong>{l s='Prefix:' mod='deval_title'}</strong> <code>{l s='My Shop - Product Name' mod='deval_title'}</code></li>
                </ul>
            </div>
        </div>
        
        <div class="panel-footer">
            <button type="submit" name="submitdeval_title" class="btn btn-default pull-right">
                <i class="process-icon-save"></i> {l s='Save' mod='deval_title'}
            </button>
        </div>
    </div>

</form>

{* Custom Styles *}
<style>
.panel-heading {
    font-weight: 600;
}

.panel-heading i {
    margin-right: 8px;
}

.required::after {
    content: " *";
    color: #e74c3c;
}

code {
    color: #c7254e;
    background-color: #f9f2f4;
    padding: 2px 6px;
    border-radius: 3px;
    font-size: 90%;
}

.alert {
    border-radius: 4px;
}

.alert p:last-child {
    margin-bottom: 0;
}

.alert ul {
    margin-bottom: 0;
    margin-top: 10px;
}

.help-block {
    color: #999;
    font-size: 12px;
    margin-top: 5px;
}

.fixed-width-sm {
    width: 100px !important;
}

.fixed-width-xl {
    width: 300px !important;
}

/* Language field styling */
.translatable-field {
    margin-bottom: 10px;
}

.translatable-field .col-lg-9 {
    float: left;
}

.translatable-field .col-lg-2 {
    float: left;
}
</style>

<script type="text/javascript">
function hideOtherLanguage(lang_id) {
    // Hide all language fields
    var fields = document.querySelectorAll('.translatable-field');
    fields.forEach(function(field) {
        field.style.display = 'none';
    });
    
    // Show selected language field
    var selectedField = document.querySelector('.translatable-field.lang-' + lang_id);
    if (selectedField) {
        selectedField.style.display = 'block';
    }
}
</script> 