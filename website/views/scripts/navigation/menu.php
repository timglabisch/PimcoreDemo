<?php
/**
 *
 * Our cool Navigation
 *
 * @var $this Pimcore_View
 */


if (count($this->startNode->getChilds()) > 0) {

    $startmenu = false;
    foreach ($this->startNode->getChilds() as $NaviDocument) {
        if (!$NaviDocument->getProperty("navigation_exclude") && ($NaviDocument instanceof Document_Page || $NaviDocument instanceof Document_Link || $NaviDocument instanceof Document_Hardlink)) {

            if ($NaviDocument instanceof Document_Hardlink) {

                if (is_object($NaviDocument->getSourceDocument())) {
                    $name = $NaviDocument->getSourceDocument()->getName();
                }

            }
            else $name = $NaviDocument->getName();

            if ($NaviDocument->isPublished() && strlen($name) > 1) {
                $startmenu = true;
            }
        }
    }

    if ($startmenu) {

        if ($this->isRoot) {
            echo "<ul id=\"mainnav\">";
        }
        else {
            echo "<ul >";
        }


    }

    $i = 0;
    foreach ($this->startNode->getChilds() as $NaviDocument) {
        if (!$NaviDocument->getProperty("navigation_exclude") && ($NaviDocument instanceof Document_Page || $NaviDocument instanceof Document_Link || $NaviDocument instanceof Document_Hardlink)) {

            $name = "";

            if ($NaviDocument instanceof Document_Hardlink) {

                if (is_object($NaviDocument->getSourceDocument())) {
                    $name = $NaviDocument->getSourceDocument()->getName();
                }

            }
            else {
                $name = $NaviDocument->getName();
            }


            if ($NaviDocument->isPublished() && strlen($name) > 1) {
                $active = false;
                $target = false;
                $class = "";

                $i++;

                if ($i == 1) {
                    $class .= " first";
                }

                if (strpos($this->document->getFullPath(), $NaviDocument->getFullPath()) === 0) {
                    $active = true;
                    $class .= " active";
                }
                $url = "/";
                if ($NaviDocument instanceof Document_Page) {
                    $url = $NaviDocument->getFullPath();
                }
                else if ($NaviDocument instanceof Document_Link) {
                    $url = $NaviDocument->getHref();
                    $target = $NaviDocument->getTarget();
                }
                else if ($NaviDocument instanceof Document_Hardlink) {
                    $url = $NaviDocument->getFullPath();
                }
                if ($target) {
                    $target = "target=\"$target\"";
                }

                ?>
            <li class="<?=$class;?>">
                <?php
                $class = "";

                if ($this->isRoot) {
                    $class .= " main";
                }
                if ($i == 1) {
                    $class .= " first";
                }
                if ($active) {
                    $class .= " active";
                }
                ?>


                <a href="<?= $url; ?>" <?=$target;?> class="<?=$class;?>">
                    <?php

                    echo htmlspecialchars($name);

                    ?>
                </a>
                <?php

                if ($NaviDocument->hasChilds()) {
                    if ($NaviDocument instanceof Document_Hardlink) {
                        $NaviDocument = $NaviDocument->getSourceDocument();
                    }

                    if ($this->onlyactive) {
                        if ($active) {
                             $this->action("menu", "navigation", null,
                                array(
                                    "startNode" => $NaviDocument,
                                    "document" => $this->document,
                                    "onlyactive" => true
                                ));
                        }
                    }
                    else {

                         echo $this->action("menu", "navigation", null,
                            array(
                                "startNode" => $NaviDocument,
                                "document" => $this->document,
                                "onlyactive" => false
                            ));
                    }
                }
                ?>
            </li>
            <?php

            }
        }
    }
    $startmenu = false;
    foreach ($this->startNode->getChilds() as $NaviDocument) {
        if (!$NaviDocument->getProperty("navigation_exclude") && ($NaviDocument instanceof Document_Page || $NaviDocument instanceof Document_Link || $NaviDocument instanceof Document_Hardlink)) {
            if ($NaviDocument instanceof Document_Hardlink) {
                if (is_object($NaviDocument->getSourceDocument)) {
                    $NaviDocument->getSourceDocument->getName();
                }
            }
            else {
                $name = $NaviDocument->getName();
            }
        }
        if ($NaviDocument->isPublished() && strlen($name) > 1) {
            $startmenu = true;

        }
    }
    if ($startmenu) {
        ?>
    </ul>
    <?php

    }
}



