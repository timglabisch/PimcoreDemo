<?php


class ToolsController extends Website_Controller_Action
{
    public function codeviewAction() {
      $this->view->codeview = $this->_getParam("codeview");
    }

    public function makebackupAction() {

        // cleanup old backups
        if (is_file(PIMCORE_DOCUMENT_ROOT . "/data/data.sql")) {
          //  unlink(PIMCORE_DOCUMENT_ROOT . "/data/data.sql");
        }

        $user = Zend_Registry::get("pimcore_config_system")->database->params->username;
        $pass = Zend_Registry::get("pimcore_config_system")->database->params->password;
        $db = Zend_Registry::get("pimcore_config_system")->database->params->dbname;

        $cmd = "mysqldump -u".$user." -p".$pass." ".$db."  > ".PIMCORE_DOCUMENT_ROOT . "/data/data.sql";

        exec($cmd);


        $data = file_get_contents(PIMCORE_DOCUMENT_ROOT . "/data/data.sql");


        $lines = preg_split("@\n@",$data);

        foreach ($lines as &$line) {

            if (preg_match("@SQL SECURITY DEFINER@",$line)) {
                $line = "";
            }
        }
        foreach ($lines as &$line) {

            if (preg_match("@".$user."@",$line)) {
                $line = "";
            }
        }

        $data = implode("\n",$lines);

        $f = fopen(PIMCORE_DOCUMENT_ROOT . "/data/data.sql","w+");
        fwrite($f,$data);

        fclose($f);

        die ("Done");

    }
}
