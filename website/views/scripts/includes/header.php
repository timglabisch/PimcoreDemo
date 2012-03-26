<div id="header">

    <div id="header_shadow"></div>

    <div class="limiter">

        <a href="/" id="logo">
            <img src="/static/img/layout/logo.png" alt=""/>
        </a>

        <div id="metanav">
            <!--
            <a href="#" class="mn_twitter"><span>/</span>tw</a>
            <a href="#" class="mn_facebook"><span>/</span>fb</a>
            <a href="#" class="mn_followus"><span>/</span>Folgen Sie uns</a>
            -->
            <?php
            switch (Zend_Registry::get("Zend_Locale")->getLanguage()) {
                case "de":
                    ?>
                        <a href="/" class="mn_english"><span>/</span><?=$this->translate("English Version");?></a>
                        <?php
                    break;
                default:
                    ?>
                        <a href="/de" class="mn_english"><span>/</span><?=$this->translate("German Version");?></a>
                        <?php
                    break;
            }
            ?>

        </div>

        <?php
        /**
         * Give us the Main Navigation
         */


        if ($this->document instanceof Document_Page) {
            echo $this->action("menu", "navigation", null,
                array(
                    //"document" => $this->document
                )
            );
        }



        ?>

    </div>
</div>
