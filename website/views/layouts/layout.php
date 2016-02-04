<!DOCTYPE html>
<html lang="en">
    <head>            
        <meta charset="utf-8">
        <link rel="icon" type="image/png" href="/pimcore/static/img/favicon/favicon-32x32.png" />

        <?php
        // output the collected meta-data
        if (!$this->document) {
            // use "home" document as default if no document is present
            $this->document = Document::getById(1);
        }

        if ($this->document->getTitle()) {
            // use the manually set title if available
            $this->headTitle()->set($this->document->getTitle());
        }

        if ($this->document->getDescription()) {
            // use the manually set description if available
            $this->headMeta()->appendName('description', $this->document->getDescription());
        }

        if ($this->document->getKeywords()) {
            // use the manually set description if available
            $this->headMeta()->appendName('keyword', $this->document->getKeywords());
        }

        $this->headTitle()->append("The New York Times");
        $this->headTitle()->setSeparator(" : ");

        echo $this->headTitle();
        echo $this->headMeta();
        ?>

        <link rel="canonical" href="http://www.nytimes.com/subscriptions/Multiproduct/lp5558.html"/>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="website/static/js/html5shiv.js"></script>
        <script src="website/static/js/common.js"></script>

        <!-- NYTimes typekit -->
        <script src="//typeface.nytimes.com/zam5nzz.js"></script>
        <script>try {
                Typekit.load();
            } catch (e) {
            }</script>


        <link rel="stylesheet" type="text/css" media="all" href="website/static/css/digi-core-grid_refactor.css"/>
    </head>

    <body>
        <div id="container">
            <?= $this->inc("/shared/header"); ?>

            <?= $this->layout()->content ?>

            <?= $this->inc("/shared/footer"); ?>
        </div>
    </body>
</html>


