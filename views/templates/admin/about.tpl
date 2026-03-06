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

<div class="panel">
    <div class="panel-heading">
        <i class="icon-info"></i> {l s='Information & Support' mod='deval_title'}
    </div>
    <div class="panel-body">
        {* Row 1: DEVAL Banner *}
        <div class="row" style="margin-bottom: 20px;">
            <div class="col-md-12 col-lg-9 col-xl-6">
                <img src="https://deval.lt/images/deval-modules.jpg" alt="DEVAL.LT" class="deval-banner-img" style="width: 100%; max-width: 100%; height: auto; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
            </div>
        </div>

        {* Row 2: Module Information *}
        <div class="row">
            <div class="col-md-12 col-lg-9 col-xl-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="icon-info-circle"></i> {l s='Module information' mod='deval_title'}</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-striped">
                            <tr>
                                <td><strong>{l s='Module name:' mod='deval_title'}</strong></td>
                                <td><strong>{$module_display_name}</strong></td>
                            </tr>
                            <tr>
                                <td><strong>{l s='Module version:' mod='deval_title'}</strong></td>
                                <td><strong>v{$module_version}</strong></td>
                            </tr>
                            <tr>
                                <td><strong>{l s='Developed by:' mod='deval_title'}</strong></td>
                                <td><a href="https://www.devalshop.com" target="_blank"><strong>DEVALSHOP.COM</strong></a></td>
                            </tr>
                            <tr>
                                <td><strong>{l s='PrestaShop version:' mod='deval_title'}</strong></td>
                                <td><strong>{$ps_version_min} - {$ps_version_max}</strong></td>
                            </tr>
                            <tr>
                                <td><strong>{l s='PHP version:' mod='deval_title'}</strong></td>
                                <td><strong>{$php_version_min} - {$php_version_max}</strong></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        {* Row 3: About (Combined Features + How it Works) *}
        <div class="row">
            <div class="col-md-12 col-lg-9 col-xl-6">
                {* About Section *}
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="icon-info"></i> {l s='About' mod='deval_title'}</h4>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-5">
                                <h5 class="deval-section-title"><i class="icon-star"></i> {l s='Module features' mod='deval_title'}</h5>
                                <ul class="list-unstyled">
                                    <li><i class="icon-check text-success"></i> {l s='Add prefix or suffix to page titles' mod='deval_title'}</li>
                                    <li><i class="icon-check text-success"></i> {l s='Works on all page types' mod='deval_title'}</li>
                                    <li><i class="icon-check text-success"></i> {l s='Customizable separator' mod='deval_title'}</li>
                                    <li><i class="icon-check text-success"></i> {l s='Enable/disable anytime' mod='deval_title'}</li>
                                    <li><i class="icon-check text-success"></i> {l s='Brand recognition boost' mod='deval_title'}</li>
                                    <li><i class="icon-check text-success"></i> {l s='SEO optimization' mod='deval_title'}</li>
                                    <li><i class="icon-check text-success"></i> {l s='Multi-shop compatible' mod='deval_title'}</li>
                                    <li><i class="icon-check text-success"></i> {l s='Simple and lightweight' mod='deval_title'}</li>
                                    <li><i class="icon-check text-success"></i> {l s='Easy to configure' mod='deval_title'}</li>
                                </ul>
                            </div>
                            <div class="col-md-7">
                                <h5 class="deval-section-title"><i class="icon-cogs"></i> {l s='How it works' mod='deval_title'}</h5>
                                <p>{l s='This module adds a global prefix or suffix to all page titles across your store:' mod='deval_title'}</p>
                                <ul>
                                    <li><strong>{l s='Choose Type:' mod='deval_title'}</strong> {l s='Select Prefix (beginning) or Suffix (end) placement' mod='deval_title'}</li>
                                    <li><strong>{l s='Enter Text:' mod='deval_title'}</strong> {l s='Add your shop name or any text you want to appear on all pages' mod='deval_title'}</li>
                                    <li><strong>{l s='Set Separator:' mod='deval_title'}</strong> {l s='Customize the separator between page title and your text' mod='deval_title'}</li>
                                    <li><strong>{l s='Automatic:' mod='deval_title'}</strong> {l s='Module automatically modifies all page titles in real-time' mod='deval_title'}</li>
                                </ul>
                                <p>{l s='The module helps improve brand recognition and SEO by consistently displaying your shop name across all pages.' mod='deval_title'}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        {* Modern Floating Help Section *}
        <div class="deval-help-section">
            <div class="row">
                <div class="col-md-12 col-lg-9 col-xl-6">
                    <div class="deval-help-card">
                        <div class="deval-help-header">
                            <i class="icon-support"></i>
                            <span>{l s='Support' mod='deval_title'}</span>
                        </div>
                        <div class="deval-help-content">
                            <div class="row">
                                <div class="col-md-8">
                                    <p>{l s='For support, module updates, development services, or other inquiries, contact us:' mod='deval_title'}</p>
                                    <p>{l s='More information about our solutions can be found on our website:' mod='deval_title'}</p>
                                </div>
                                <div class="col-md-4 text-right">
                                    <div class="deval-help-buttons">
                                        <a href="mailto:info@devalshop.com" class="btn btn-primary btn-sm">
                                            <i class="icon-envelope"></i>&nbsp;{l s='Email' mod='deval_title'}
                                        </a>
                                        <a href="https://www.devalshop.com" target="_blank" class="btn btn-default btn-sm">
                                            <i class="icon-external-link"></i>&nbsp;DEVALSHOP.COM
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
/* Unified heading styles for all blocks */
.panel-default .panel-heading h4 {
    margin: 0;
    font-size: 15px;
    font-weight: 600;
    display: inline-block;
}

.panel-default .panel-heading h4 i {
    font-size: 16px;
    margin-right: 5px;
}

/* Section title styling (Module features, How it works) */
.deval-section-title {
    font-size: 16px !important;
    font-weight: 600 !important;
    margin-top: 0 !important;
    margin-bottom: 15px !important;
    color: #333 !important;
}

.deval-section-title i {
    font-size: 19px;
    margin-right: 8px;
}

.deval-help-card {
    background: linear-gradient(135deg, #252B35 0%, #2A303C 100%);
    border-radius: 12px;
    box-shadow: 0 8px 32px rgba(37, 43, 53, 0.25);
    overflow: hidden;
    color: white;
    border: 1px solid rgba(255, 255, 255, 0.1);
}

.deval-help-header {
    padding: 20px 30px 15px;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    display: flex;
    align-items: center;
    gap: 10px;
    background: transparent !important;
    position: relative;
    z-index: 10;
}

.deval-help-header i {
    font-size: 16px;
    color: white !important;
    margin-right: 5px;
}

.deval-help-header h3,
.deval-help-header span {
    margin: 0;
    font-size: 15px;
    font-weight: 600;
    color: white !important;
    text-shadow: none;
    background: none !important;
    display: inline-block;
}

.deval-help-content {
    padding: 20px 30px 25px;
}

.icon-external-link {
    color: white !important;
}

.deval-help-content p {
    color: rgba(255, 255, 255, 0.9);
    margin-bottom: 8px;
}

.deval-help-content small {
    color: rgba(255, 255, 255, 0.7);
}

.deval-help-buttons {
    display: flex;
    flex-direction: column;
    gap: 8px;
    align-items: flex-end;
}

.deval-help-buttons .btn {
    min-width: 150px;
    font-weight: 500;
    border-radius: 6px;
    transition: all 0.3s ease;
}

.deval-help-buttons .btn-primary {
    background-color: #f05360;
    border: none;
    color: white;
    border-radius: 6px;
}

.btn.btn-default.btn-sm:hover {
  background-color: #f05360;
}

.deval-help-buttons .btn-primary:hover {
    background-color: #d63c4a;
    border: none;
    color: white;
    transform: translateY(-2px);
}

.deval-help-buttons .btn-default {
    background-color: #f05360;
    border: none;
    color: white !important;
    border-radius: 6px;
}

.deval-help-buttons .btn-default:hover {
    background-color: #d63c4a;
    border: none;
    color: white !important;
    transform: translateY(-2px);
}

/* Override any PrestaShop admin styles that might interfere */
.deval-help-card .deval-help-header * {
    color: white !important;
    background: none !important;
}

.deval-help-card .panel-heading {
    background: none !important;
    border: none !important;
    color: white !important;
}

/* Responsive adjustments */
@media (max-width: 768px) {
    .deval-help-header {
        padding: 15px 20px 10px;
        flex-direction: column;
        text-align: center;
        gap: 5px;
    }
    
    .deval-help-content {
        padding: 15px 20px 20px;
    }
    
    .deval-help-buttons {
        align-items: center;
        margin-top: 15px;
    }
    
    .deval-help-buttons .btn {
        width: 100%;
        max-width: 200px;
    }
}

/* Banner image responsive fix */
@media (max-width: 800px) {
    .deval-banner-img {
        width: 100% !important;
    }
}

@media (max-width: 600px) {
    .deval-banner-img {
        width: 100% !important;
        max-width: 500px !important;
    }
}
</style>
