<div class="container-fluid">
  <ol style="padding:20px;">
    <li style="line-height:180%;list-style: decimal outside none;"><a href="spam.php?op=all"><{$smarty.const._MA_TADADM_AUTO_CHECK}></a><{$_MA_TADADM_AUTO_CHECK_DESC}></li>
    <li style="line-height:180%;list-style: decimal outside none;"><{$smarty.const._MA_TADADM_AUTO_CHECK_DESC1}></li>
    <li style="line-height:180%;list-style: decimal outside none;"><{$smarty.const._MA_TADADM_AUTO_CHECK_DESC2}></li>
    <li style="line-height:180%;list-style: decimal outside none;"><{$smarty.const._MA_TADADM_AUTO_CHECK_DESC3}></li>
    <li style="line-height:180%;list-style: decimal outside none;"><{$smarty.const._MA_TADADM_AUTO_CHECK_DESC4}></li>
    <li style="line-height:180%;list-style: decimal outside none;"><{$smarty.const._MA_TADADM_AUTO_CHECK_DESC5}></li>
    <li style="line-height:180%;list-style: decimal outside none;"><{$_MA_TADADM_WORKTIME}></li>
  </ol>

  <{if $op=="spam"}>

    <form action="spam.php" method="post">
      <table class="table table-striped table-bordered table-hover">
      <tr><td colspan=10><{$bar}></td></tr>
      <tr>
      <th>uid</th>
      <th><{$smarty.const._MA_TADADM_UNAME}></th>
      <th><{$smarty.const._MA_TADADM_COUNT}></th>
      <th><{$smarty.const._MA_TADADM_EMAIL}></th>
      <th><{$smarty.const._MA_TADADM_SPAM}></th>
      <th><{$smarty.const._MA_TADADM_REGIST}></th>
      <th><{$smarty.const._MA_TADADM_LASTLOGIN}></th>
      <th style="width:200px;"><{$smarty.const._MA_TADADM_SIGN}></th>
      </tr>
          <{foreach from=$all_data item=spam}>
            <tr style="color:<{$spam.color}>;background-color:<{$spam.bgcolor}>;">
              <td>
                <label class="checkbox-inline">
                  <input type="checkbox" name="uid[]" value="<{$spam.uid}>" <{$spam.checked}> id="uid_<{$spam.uid}>" class="uid"><{$spam.uid}>
                </label>

              </td>
              <td><label for="uid_<{$spam.uid}>"><{$spam.uname}></label><div><label for="uid_<{$spam.uid}>"><{$spam.name}></label></div></td>
              <td><{$spam.posts}></td>
              <td><label for="uid_<{$spam.uid}>"><{$spam.email}></label><div><label for="uid_<{$spam.uid}>"><{$spam.url}></label></div></td>
              <td><{$spam.appears}></td>
              <td><{$spam.user_regdate}><div><{$spam.last_login}></div></td>
              <td><label for="uid_<{$spam.uid}>"><{$spam.days_between}></label></td>
              <td><label for="uid_<{$spam.uid}>"><{$spam.user_sig}></label></td>
            </tr>
          <{/foreach}>
      <tr><td colspan=10><{$bar}></td></tr>
      </table>
      "<{$_MA_TADADM_TOTAL}>
        <input type="hidden" name="g2p" value="<{$g2p}>">
        <input type="hidden" name="op" value="del_user">
        <input type="submit" value="<{$smarty.const._TAD_DEL_CONFIRM}>">
    </form>
  <{else}>

    <script type="text/javascript">
    $().ready(function(){
      $("#clickAll").click(function() {
        if($("#clickAll").prop("checked")){
          $("input[name='uid[]']").each(function() {
          $(this).prop("checked", true);
        });
      }else{
       $("input[name='uid[]']").each(function() {
           $(this).prop("checked", false);
       });
      }
      });
    });
    </script>

    <form action="spam.php" method="get">
        <{$_MA_TADADM_NEVERSTART_DAY}>
        <input type="hidden" name="op" value="byNeverStartDays">
        <input type="submit" value="<{$smarty.const._TAD_GO}>">
      </form>
      <form action="spam.php" method="get">
        <{$_MA_TADADM_NEVERLOGIN_DAY}>
        <input type="hidden" name="op" value="byNeverLoginDays">
        <input type="submit" value="<{$smarty.const._TAD_GO}>">
      </form>
      <form action="spam.php" method="get">
        <{$_MA_TADADM_BY_EMAIL}>
        <input type="hidden" name="op" value="byEmail">
        <input type="submit" value="<{$smarty.const._TAD_GO}>">
      </form>

      <form action="spam.php" method="post">
      <table class="table table-striped table-bordered table-hover">
        <tr><td colspan=10><{$bar}></td></tr>
        <tr><td colspan=10>
        <label class="checkbox-inline">
          <input type="checkbox" value="" id="clickAll">  <{$smarty.const._MA_TADADM_SELECT_ALL}>
        </label>
        </td></tr>
        <tr>
        <th>uid</th>
        <th><{$smarty.const._MA_TADADM_UNAME}></th>
        <th><{$smarty.const._MA_TADADM_COUNT}></th>
        <th><{$smarty.const._MA_TADADM_EMAIL}></th>
        <th><{$smarty.const._MA_TADADM_SPAM}></th>
        <th><{$smarty.const._MA_TADADM_REGIST}></th>
        <th><{$smarty.const._MA_TADADM_LASTLOGIN}></th>
        <th style="width:200px;"><{$smarty.const._MA_TADADM_SIGN}></th>
        </tr>
          <{foreach from=$all_data item=spam}>
            <tr style="color:<{$spam.color}>;background-color:<{$spam.bgcolor}>;">
              <td>
                <label class="checkbox-inline">
                  <input type="checkbox" name="uid[]" value="<{$spam.uid}>" <{$spam.checked}> id="uid_<{$spam.uid}>" class="uid"><{$spam.uid}>
                </label>

              </td>
              <td><label for="uid_<{$spam.uid}>"><{$spam.uname}></label><div><label for="uid_<{$spam.uid}>"><{$spam.name}></label></div></td>
              <td><{$spam.posts}></td>
              <td><label for="uid_<{$spam.uid}>"><{$spam.email}></label><div><label for="uid_<{$spam.uid}>"><{$spam.url}></label></div></td>
              <td><{$spam.appears}></td>
              <td><{$spam.user_regdate}><div><{$spam.last_login}></div></td>
              <td><label for="uid_<{$spam.uid}>"><{$spam.days_between}></label></td>
              <td><label for="uid_<{$spam.uid}>"><{$spam.user_sig}></label></td>
            </tr>
          <{/foreach}>
        <tr><td colspan=10><{$bar}></td></tr>
        </table>
        <{$_MA_TADADM_TOTAL}>
        <input type="hidden" name="g2p" value="<{$g2p}>">
        <input type="hidden" name="op" value="del_user">
        <input type="submit" value="<{$smarty.const._TAD_DEL_CONFIRM}>">
      </form>
  <{/if}>
</div>