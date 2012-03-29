<div id="header">

    <div id="header_shadow"></div>

    <div class="limiter">

        <a href="/" id="logo">
            <img src="/static/img/layout/logo.png" alt=""/>
        </a>

        <div id="metanav">
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
</div>
