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
    <div class="col-lg-2">
        <div class="list-group">
            {foreach from=$tabs key=tab_key item=tab}
                <a href="#" 
                   class="list-group-item {if $current_tab == $tab_key}active{/if}"
                   data-tab="{$tab_key}">
                    {$tab.name}
                </a>
            {/foreach}
        </div>
    </div>
    <div class="col-lg-10">
        {foreach from=$tabs key=tab_key item=tab}
            <div class="tab-content {if $current_tab != $tab_key}hidden{/if}" id="tab-{$tab_key}">
                {$tab.content nofilter}
            </div>
        {/foreach}
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('.list-group-item').click(function(e) {
            e.preventDefault();
            var tab = $(this).data('tab');
            
            // Update active state
            $('.list-group-item').removeClass('active');
            $(this).addClass('active');
            
            // Show selected tab content
            $('.tab-content').addClass('hidden');
            $('#tab-' + tab).removeClass('hidden');
            
            // Update URL
            var url = new URL(window.location.href);
            url.searchParams.set('current_tab', tab);
            window.history.pushState({}, '', url);
        });
    });
</script> 