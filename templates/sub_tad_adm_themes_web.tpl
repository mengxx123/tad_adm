<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
    <div class="alert <{if $mod.function=='update_theme'}>alert-danger<{else}>alert-success<{/if}>">
        <div class="row">
            <div class="col-xs-6 col-sm-5">
                <img src="<{$mod.logo}>" alt="<{$mod.name}>" style="width: 100%;" id="<{$mod.dirname}>_tip">
            </div>
            <div class="col-xs-6 col-sm-7">
                <div style="font-size: 1.1em;">
                    <a href="https://campus-xoops.tn.edu.tw/modules/tad_modules/index.php?module_sn=
                        <{$mod.module_sn}>" title="<{$mod.dirname}><{$smarty.const._MA_TADADM_MOD_ADMIN}>" target="_blank" style="font-weight: bold;">
                    <{$mod.dirname}> <{$mod.version}></a>
                </div>

                <{if $mod.function=='update_theme'}>
                    <a href="main.php?op=update_theme&dirname=<{$mod.dirname}>&file_link=<{$mod.file_link}>&update_sn=<{$mod.update_sn}>&tad_adm_tpl=clean" class="btn btn-xs btn-danger modulesadmin"  data-fancybox-type="iframe" title="<{$mod.dirname}> <{$mod.version}> (<{$mod.last_update}>) to <{$mod.new_version}> (<{$mod.new_last_update}>)"><{$smarty.const._MA_TADADM_CAN_UPDATE_TO}> <{$mod.new_version}></a>
                <{else}>
                    <a href="main.php?op=update_theme&dirname=<{$mod.dirname}>&file_link=<{$mod.file_link}>&update_sn=<{$mod.update_sn}>"  title="<{$mod.dirname}> <{$mod.version}> (<{$mod.last_update}>) to <{$mod.new_version}> (<{$mod.new_last_update}>)">
                        <i class="fa fa-check-circle" aria-hidden="true"></i>
                        <{$smarty.const._MA_TADADM_MOD_LATEST}> </a>
                <{/if}>
                
                <div>
                    <{if $theme_set==$mod.dirname}>
                        <a href="#" class="btn btn-xs btn-primary"><{$smarty.const._MA_TADADM_DEFAULT_THEME}></a>   
                    <{elseif $mod.allowed==1}>                        
                        <a href="javascript:del_theme('<{$mod.dirname}>')" title="<{$smarty.const._MA_TADADM_REMOVE}> <{$mod.dirname}>" class="btn btn-xs btn-danger">
                            <i class="fa fa-times"></i> <{$smarty.const._MA_TADADM_REMOVE}>
                        </a>
                        
                        <a href="main.php?op=update_allowed&val=0&theme=<{$mod.dirname}>" title="<{$mod.dirname}><{$smarty.const._MA_TADADM_MOD_PREF}>" class="btn btn-xs btn-warning">
                            <i class="fa fa-ban"></i> <{$smarty.const._MA_TADADM_UPDATE_TO_NOT_ALLOWED}>
                        </a>
                    <{elseif $mod.allowed!=1}>
                        <a href="javascript:del_theme('<{$mod.dirname}>')"  title="<{$smarty.const._MA_TADADM_REMOVE}> <{$mod.dirname}>" class="btn btn-xs btn-danger">
                            <i class="fa fa-times"></i>
                            <{$smarty.const._MA_TADADM_REMOVE}>
                        </a>
                    
                        <a href="main.php?op=update_allowed&val=1&theme=<{$mod.dirname}>" title="<{$mod.dirname}><{$smarty.const._MA_TADADM_MOD_PREF}>" class="btn btn-xs btn-success">
                            <i class="fa fa-check-square-o"></i> <{$smarty.const._MA_TADADM_UPDATE_TO_ALLOWED}>
                        </a>
                    <{/if}>
                </div>

                <div>
                    <{if $mod.fileowner.name}>
                        <{$mod.fileowner.name}>:<{$mod.filegroup.name}>
                    <{/if}>
                    <{if $mod.fileperms=='0777'}>
                        <{$smarty.const._MA_TADADM_WRITABLE}>
                    <{else}>
                        <{$mod.fileperms}>
                    <{/if}>
                </div>
            </div>
        </div>
    </div>
</div>