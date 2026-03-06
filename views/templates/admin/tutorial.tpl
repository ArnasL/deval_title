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

<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                <i class="icon-book"></i> {l s='How to Use' mod='deval_title'}
            </div>
            <div class="panel-body">
                <h4>{l s='Quick Start Guide' mod='deval_title'}</h4>
                <ol>
                    <li><strong>{l s='Enable the module' mod='deval_title'}</strong> - {l s='Go to Settings tab and turn on the module' mod='deval_title'}</li>
                    <li><strong>{l s='Choose title type' mod='deval_title'}</strong> - {l s='Select Prefix (beginning) or Suffix (end)' mod='deval_title'}</li>
                    <li><strong>{l s='Enter your text' mod='deval_title'}</strong> - {l s='Type the text you want to add to all page titles (e.g., your shop name)' mod='deval_title'}</li>
                    <li><strong>{l s='Set separator' mod='deval_title'}</strong> - {l s='Choose separator characters (default: " - ")' mod='deval_title'}</li>
                    <li><strong>{l s='Save and test' mod='deval_title'}</strong> - {l s='Click Save and check any page on your store' mod='deval_title'}</li>
                </ol>
                
                <div class="alert alert-success">
                    <p><strong><i class="icon-lightbulb"></i> {l s='Examples:' mod='deval_title'}</strong></p>
                    <ul style="margin-top: 10px; margin-bottom: 0;">
                        <li><strong>{l s='Suffix:' mod='deval_title'}</strong> <code>{l s='Product Name - My Shop' mod='deval_title'}</code></li>
                        <li><strong>{l s='Prefix:' mod='deval_title'}</strong> <code>{l s='My Shop - Product Name' mod='deval_title'}</code></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                <i class="icon-lightbulb"></i> {l s='Best Practices' mod='deval_title'}
            </div>
            <div class="panel-body">
                <ul>
                    <li><strong>{l s='Keep it short' mod='deval_title'}</strong> - {l s='Recommended total title length: 50-60 characters for optimal display in search results' mod='deval_title'}</li>
                    <li><strong>{l s='Use your brand name' mod='deval_title'}</strong> - {l s='Adding your shop name helps with brand recognition' mod='deval_title'}</li>
                    <li><strong>{l s='Test on different pages' mod='deval_title'}</strong> - {l s='Check product pages, categories, CMS pages to ensure titles look good everywhere' mod='deval_title'}</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                <i class="icon-wrench"></i> {l s='Troubleshooting' mod='deval_title'}
            </div>
            <div class="panel-body">
                <div class="troubleshooting-item">
                    <h6><i class="icon-question-circle"></i> {l s='Title is not changing on the frontend' mod='deval_title'}</h6>
                    <ul>
                        <li>{l s='Make sure the module is enabled in Settings tab' mod='deval_title'}</li>
                        <li>{l s='Check that you entered text in the "Title Text" field' mod='deval_title'}</li>
                        <li>{l s='Clear PrestaShop cache (Advanced Parameters > Performance)' mod='deval_title'}</li>
                        <li>{l s='Clear your browser cache and refresh the page' mod='deval_title'}</li>
                    </ul>
                </div>
                
                <div class="troubleshooting-item">
                    <h6><i class="icon-question-circle"></i> {l s='Settings are not saving' mod='deval_title'}</h6>
                    <ul>
                        <li>{l s='Check PrestaShop error logs (var/logs/)' mod='deval_title'}</li>
                        <li>{l s='Verify database write permissions' mod='deval_title'}</li>
                        <li>{l s='Look for PHP errors in browser console (F12 > Console)' mod='deval_title'}</li>
                    </ul>
                </div>
                
                <div class="alert alert-info" style="margin-top: 20px;">
                    <p><i class="icon-info-circle"></i> {l s='Need help? Contact support via the' mod='deval_title'} <a href="javascript:void(0);" onclick="window.location.href = window.location.href.split('&current_tab=')[0] + '&current_tab=about'; return false;" style="font-weight: bold;">{l s='Information & Support' mod='deval_title'}</a> {l s='tab' mod='deval_title'}.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.troubleshooting-item {
    margin-bottom: 25px;
    padding-bottom: 20px;
    border-bottom: 1px solid #e5e5e5;
}

.troubleshooting-item:last-child {
    border-bottom: none;
    margin-bottom: 0;
    padding-bottom: 0;
}

.troubleshooting-item h6 {
    font-size: 14px;
    font-weight: 600;
    color: #333;
    margin-bottom: 10px;
}

.troubleshooting-item h6 i {
    color: #00aff0;
    margin-right: 8px;
}

.troubleshooting-item ul {
    margin-left: 20px;
}

.troubleshooting-item ul li {
    margin-bottom: 5px;
    color: #666;
}
</style>
