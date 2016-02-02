<?php while($this->block("contentblock")->loop()) { ?>

<table style="border-collapse: collapse;border-spacing: 0;Margin-left: auto;Margin-right: auto;" class="centered">
    <tbody><tr>
            <td style="padding: 0;vertical-align: top;font-size: 1px;line-height: 1px;background-color: #dddee1;width: 1px;" class="border">&#8203;</td>
            <td style="padding: 0;vertical-align: top;">
                <table emb-background-style="" style="border-collapse: collapse;border-spacing: 0;Margin-left: auto;Margin-right: auto;width: 600px;background-color: #ffffff;table-layout: fixed;" class="two-col">
                    <tbody><tr>
                            <td style="padding: 0;vertical-align: top;text-align: left;width: 300px;" class="column first">
                                <div><div style="font-size: 32px;line-height: 32px;transition-timing-function: cubic-bezier(0, 0, 0.2, 1);transition-duration: 150ms;transition-property: all;" class="column-top">&nbsp;</div></div>
                                <table style="border-collapse: collapse;border-spacing: 0;table-layout: fixed;width: 100%;" class="contents">
                                    <tbody><tr>
                                            <td style="padding: 0;vertical-align: top;padding-left: 32px;padding-right: 16px;word-break: break-word;word-wrap: break-word;" class="padded">

                                                <div align="center" style="font-size: 12px;mso-line-height-rule: at-least;font-style: normal;font-weight: 400;Margin-bottom: 0;Margin-top: 0;font-family: &quot;Open Sans&quot;,sans-serif;color: #60666d;" class="image">
                                                    <?= $this->image("content_img", ["width" => 252, "height" => 252]) ?>
                                                </div>

                                            </td>
                                        </tr>
                                    </tbody></table>

                                <div style="font-size: 32px;line-height: 32px;transition-timing-function: cubic-bezier(0, 0, 0.2, 1);transition-duration: 150ms;transition-property: all;" class="column-bottom">&nbsp;</div>
                            </td>
                            <td style="padding: 0;vertical-align: top;text-align: left;width: 300px;" class="column second">
                                <div><div style="font-size: 32px;line-height: 32px;transition-timing-function: cubic-bezier(0, 0, 0.2, 1);transition-duration: 150ms;transition-property: all;" class="column-top">&nbsp;</div></div>
                                <table style="border-collapse: collapse;border-spacing: 0;table-layout: fixed;width: 100%;" class="contents">
                                    <tbody><tr>
                                            <td style="padding: 0;vertical-align: top;padding-left: 16px;padding-right: 32px;word-break: break-word;word-wrap: break-word;" class="padded">

                                                <h2 style="font-style: normal;font-weight: 700;Margin-bottom: 0;Margin-top: 0;font-size: 24px;line-height: 32px;font-family: &quot;Open Sans&quot;,sans-serif;color: #44a8c7;"><strong style="font-weight: bold;"><?= $this->input("header_title") ?></strong></h2>
                                                <?= $this->wysiwyg("header_text", ["height" => 100]) ?>
                                                

                                            </td>
                                        </tr>
                                    </tbody></table>

                                <table style="border-collapse: collapse;border-spacing: 0;table-layout: fixed;width: 100%;" class="contents">
                                    <tbody><tr>
                                            <td style="padding: 0;vertical-align: top;padding-left: 16px;padding-right: 32px;word-break: break-word;word-wrap: break-word;" class="padded">

                                                <div style="Margin-bottom: 0;Margin-top: 0;text-align: left;" class="btn">
                                                    <!--[if !mso]--><a data-width="173" href="http://osscube.createsend1.com/t/i-l-dyqttt-l-y/" style="border-radius: 4px;display: inline-block;font-size: 12px;font-weight: 700;line-height: 22px;padding: 10px 28px;text-align: center;text-decoration: none !important;transition: opacity 0.2s ease-in;color: #fff;font-family: 'Open Sans', sans-serif;background-color: #5c91ad;" target="_blank">Check out our top to-do's</a><!--[endif]-->
                                                  <!--[if mso]><v:roundrect xmlns:v="urn:schemas-microsoft-com:vml" href="http://osscube.createsend1.com/t/i-l-dyqttt-l-y/" style="width:229px" arcsize="10%" fillcolor="#5C91AD" stroke="f"><v:textbox style="mso-fit-shape-to-text:t" inset="0px,9px,0px,9px"><center style="font-size:12px;line-height:22px;color:#FFFFFF;font-family:sans-serif;font-weight:700;mso-line-height-rule:exactly;mso-text-raise:4px">Check out our top to-do&#39;s</center></v:textbox></v:roundrect><![endif]--></div>

                                            </td>
                                        </tr>
                                    </tbody></table>

                                <div style="font-size: 32px;line-height: 32px;transition-timing-function: cubic-bezier(0, 0, 0.2, 1);transition-duration: 150ms;transition-property: all;" class="column-bottom">&nbsp;</div>
                            </td>
                        </tr>
                    </tbody></table>
            </td>
            <td style="padding: 0;vertical-align: top;font-size: 1px;line-height: 1px;background-color: #dddee1;width: 1px;" class="border">&#8203;</td>
        </tr>
    </tbody>
</table>

<?php } ?>