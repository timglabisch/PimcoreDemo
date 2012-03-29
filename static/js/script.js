var infoareacontent = false;
var currentsitewidth;
var htmltag = $("html");
var portal = false;
var oldie = false;
var ie7 = false;
var ie8 = false;

var config = {
    menuanimationspeed:0,
    slideranimationspeed:200,
    sliderdelay:250
}

function gotoLink(htmlElement) {

    var destinationURL = "";
    var target = "";

    if (htmlElement.href) {
        destinationURL = htmlElement.href;
        target = htmlElement.getAttribute("target");
    }
    else {
        if (htmlElement.childNodes) {
            if (htmlElement.getElementsByTagName("a")) {
                destinationURL = htmlElement.getElementsByTagName("a")[0].href;
                target = htmlElement.getElementsByTagName("a")[0].getAttribute("target");
            }
        }
    }

    if (destinationURL.length > 0) {
        if (target == "_blank") {
            window.open(destinationURL);
        }
        else {
            location.href = destinationURL;
        }
    }
    return false;
}

function checkforOldie() {

    if (htmltag.hasClass("ie7")) {
        oldie = true;
        ie7 = true;
    }
    if (htmltag.hasClass("ie8")) {
        oldie = true;
        ie8 = true;
    }
}

function adjustRightcolMargin(currentsitewidth) {

    switch (currentsitewidth) {
        case "screen":
            var vb_height = ($(".videoblock").outerHeight() + 30) * -1;
            $(".rightcol").css("margin-top", vb_height + "px");
            break;
        case "ipad":
            $(".rightcol").css("margin-top", "0px");
            break;
    }

}
;

function getSiteWidth() {

    var w_width = $(window).width();

    if (w_width >= 970) {
        currentsitewidth = "screen";

        $(".item_slogan").hide();

        var $newscontainer = $("#newsitems");

        if ($newscontainer.length) {

            /*$newscontainer.isotope({
             // options
             itemSelector:'.teaser',
             layoutMode:'cellsByRow',
             cellsByRow:{
             columnWidth:330,
             rowHeight:251
             }, animationOptions:{
             duration:750,
             easing:'linear',
             queue:false
             },
             animationEngine:"css"
             });*/
        }

    } else if (w_width < 970 && w_width > 680) {

        $(".item_slogan").show();
        currentsitewidth = "ipad";
        var $newscontainer = $("#newsitems");
        $newscontainer.isotope("destroy");

    } else {
        $(".item_slogan").show();
        currentsitewidth = "mobile";
    }

}

function filterItemsMargin(currentsitewidth) {

    var items = $(".item", "#itemstofilter");
    var itemslength = items.length;

    switch (currentsitewidth) {
        case "screen":
            var itemsperrow = 5;
            for (i = 0; i <= itemslength; i++) {
                var currentitem = $(".item:eq(" + (i - 1) + ")", "#itemstofilter");
                if ((i % 5) == 0) {
                    currentitem.css("margin", "0 0 20px 0").css("float", "left");
                }
            }
            break;
        case "ipad":
            $(items).css("margin", "0 20px 20px 0").css("float", "left");
            break;
        case "mobile":
            $(items).css("margin", "0 auto 20px auto").css("float", "none");
            break;
    }

}
;

function teaserClasses(currentsitewidth) {

    switch (currentsitewidth) {
        case "ipad":
            $(items).css("margin", "0 20px 20px 0").css("float", "left");
            break;
        case "mobile":
            $(items).css("margin", "0 auto 20px auto").css("float", "none");
            break;
    }

}

/*function disableSlider(item) {
 item.off();
 }*/

var ismobile = /iPad|iPhone|Android/.test(navigator.userAgent);

getSiteWidth();

$(document).ready(function () {

    // CHECK FOR OLDIE

    checkforOldie();

    // ADD CUSTOM CLASSES

    // Portal Teasers

    if (htmltag.hasClass("content")) {
        portal = false;
    } else {
        portal = true;
    }

    if (currentsitewidth == "screen") {

        var teaseritems = $(".teaser");
        var teaseritemslength = teaseritems.length + 1;


        //if ( $("#newsaitems").length == 0 ) {

        for (t = 1; t < teaseritemslength; t++) {
            var currentitem = $(".teaser:eq(" + (t - 1) + ")");
            if ((t % 4) == 0) {
                //$(".teaser:eq(0)").addClass("first");
                //currentitem.addClass("first");
            }
            if ((t != 0) && ((t % 3) == 0)) {
                currentitem = $(".teaser:eq(" + (t - 1) + ")");
                currentitem.addClass("last");
            }
        }

        //}

    }


    // FILTER STUFF

    if ($("#itemstofilter").length) {

        filterItemsMargin(currentsitewidth);

        var itemtofilter = $(".item", "#itemstofilter");
        var filteritem = $("div", "#filter");

        itemtofilter.on({
            click:function () {
                return false;
            }
        });

        filteritem.on({
            click:function () {
                var thisclass = $(this).attr("class");
                itemtofilter.addClass("faded");
                if (thisclass == "all") {
                    itemtofilter.removeClass("faded");
                } else {
                    $("." + thisclass, "#itemstofilter").removeClass("faded");
                }
                $(filteritem).removeClass("active");
                $(this).addClass("active");
            }
        });

    }

    // RIGHTCOL ALIGNMENT

    if ($(".videoblock").length && $(".rightcol").length) {
        adjustRightcolMargin(currentsitewidth);
    }

    // RESIZE STUFF

    $(window).resize(function () {

        getSiteWidth();

        // Filter Items

        if ($("#itemstofilter").length) {
            filterItemsMargin(currentsitewidth);
        }

        // Rightcol

        if ($(".videoblock").length && $(".rightcol").length) {
            adjustRightcolMargin(currentsitewidth);
        }

        // Infoareacontent

        if (currentsitewidth == "screen") {
            infoareacontent = true;
        } else {
            infoareacontent = false;
        }

    });


    // SLIDER SLIDEUP


    // PORTAL SLIDER FUNCTIONALITY


    if (currentsitewidth == "screen") {
        $(".item  .item_slogan").hide();
    }


    if ($("#slider").length) {

        var itemcontainer = $("#itemcontainer");
        var item = $(".item", itemcontainer);
        var slider = $("#slider");

        var infoarea = $("#infoarea");
        var easing = "easeInOutExpo";
        var speed = config.slideranimationspeed;

        enableSlider(slider, speed, easing);

        $(window).resize(function () {
            enableSlider(slider, speed, easing);
        });

        // SWITCH SUJET

        var sc_leftarrow = $("#sc_leftarrow");
        var sc_rightarrow = $("#sc_rightarrow");
        var sc_currpos = 0;
        var totalitems = $(".item", itemcontainer).length;
        var allitems = $(".item", itemcontainer);
        var allslogans = $(".item_slogan", allitems);
        var allimages = $("img", itemcontainer);
        var desccont = $(".description");

        sc_leftarrow.on({

            click:function () {

                allimages.addClass("invisible");
                allslogans.css("opacity", "0");

                if (sc_currpos > 0) {

                    // Infoitem

                    var thisinfo = $(".infoarea.isnone", ".item:eq(" + (sc_currpos - 1) + ")").html();

                    // Slogan

                    var currentslogan = $(".item:eq(" + (sc_currpos) + ") .item_slogan");

                    // Image

                    var nextimage = $(".item:eq(" + (sc_currpos - 1) + ")").find("img");

                    // Animation Functions

                    // Infoitem

                    desccont.slideUp(500, function () {
                        $(this).html(thisinfo).slideDown(500);
                    });

                    // Slogan

                    currentslogan.css("opacity", "0");

                    // Image

                    nextimage.addClass("visible").addClass("fadein");

                } else {

                    // Infoitem

                    var thisinfo = $(".infoarea.isnone", ".item:eq(" + (totalitems - 1) + ")").html();

                    // Slogan

                    // Image

                    // Animation Functions

                    desccont.slideUp(500, function () {
                        $(this).html(thisinfo).slideDown(500);
                    });


                }


                if (sc_currpos > 0) {

                    // $(".item:eq(" + (sc_currpos - 1) + ")").addClass("visible").find("img").addClass("fadein");

                    $(".item:eq(" + (sc_currpos - 1) + ") img.fadein").stop(true, true).animate({
                        opacity:1
                    }, 500, function () {
                        $(".item:eq(" + (sc_currpos) + ")", itemcontainer).removeClass("visible");
                        sc_currpos = (sc_currpos - 1);
                        $(".item:eq(" + (sc_currpos) + ")", itemcontainer).addClass("visible");
                        allimages.css("opacity", "0");
                        $(this).css("opacity", "1");
                        //$(".item:eq(" + (sc_currpos) + ") .item_slogan").fadeIn("fast");

                        //if (currentsitewidth == "screen") {
                        $(".item:eq(" + (sc_currpos) + ") .item_slogan").stop(true, true).animate({
                            opacity:1
                        }, 500, function () {
                            $("#stresslayer").delay(0).hide();
                        });
                        /*} else {
                         $("#stresslayer").delay(0).hide();
                         }*/

                        $(this).removeClass("fadein");
                        /*$("#stresslayer").hide();*/


                    });

                } else {
                    $(".item:eq(" + (totalitems - 1) + ")").addClass("visible").find("img").addClass("fadein");
                    $(".item:eq(" + (totalitems - 1) + ") img.fadein").stop(true, true).animate({
                        opacity:1
                    }, 500, function () {
                        $(".item:eq(" + (sc_currpos) + ")", itemcontainer).removeClass("visible");
                        sc_currpos = (totalitems - 1);
                        $(".item:eq(" + (sc_currpos) + ")", itemcontainer).addClass("visible");
                        allimages.css("opacity", "0");
                        $(this).css("opacity", "1");
                        /*if (controlvar == "none") {*/
                        /*$(".item:eq(" + (sc_currpos) + ") .item_slogan").fadeIn("fast");*/
                        //if (currentsitewidth == "screen") {
                        $(".item:eq(" + (sc_currpos) + ") .item_slogan").stop(true, true).animate({
                            opacity:1
                        }, 500, function () {
                            $("#stresslayer").delay(0).hide();
                        });
                        /*} else {
                         $("#stresslayer").delay(0).hide();
                         }*/
                        /*}*/
                        $(this).removeClass("fadein");
                        /*$("#stresslayer").hide();*/
                    });
                }
            }
        });

        sc_rightarrow.on({

            click:function () {

                allimages.addClass("invisible");
                $(".item:eq(" + (sc_currpos) + ") img").css("opacity", "1");
                //if ( currentsitewidth == "screen") {
                $(".item_slogan", allitems).css("opacity", "0");
                //}
                $(".item:eq(" + (sc_currpos) + ") .item_slogan").css("opacity", "0");
                $("#stresslayer").show();

                var desccont = $(".description");
                if (sc_currpos < ( totalitems - 1)) {
                    var thisinfo = $(".infoarea.isnone", ".item:eq(" + (sc_currpos + 1) + ")").html();
                } else {
                    var thisinfo = $(".infoarea.isnone", ".item:eq(" + (0) + ")").html();
                }
                desccont.slideUp(500, function () {
                    $(this).html(thisinfo).slideDown(500);
                    console.log(thisinfo);
                });


                if (sc_currpos < (totalitems - 1)) {

                    $(".item:eq(" + (sc_currpos + 1) + ")").addClass("visible").find("img").addClass("fadein");
                    $(".item:eq(" + (sc_currpos + 1) + ") img.fadein").stop(true, true).animate({
                        opacity:1
                    }, 500, function () {
                        $(".item:eq(" + (sc_currpos) + ")", itemcontainer).removeClass("visible");
                        sc_currpos = (sc_currpos + 1);
                        $(".item:eq(" + (sc_currpos) + ")", itemcontainer).addClass("visible");
                        allimages.css("opacity", "0");
                        $(this).css("opacity", "1");
                        //if (currentsitewidth == "screen") {
                        $(".item:eq(" + (sc_currpos) + ") .item_slogan").stop(true, true).animate({
                            opacity:1
                        }, 500, function () {
                            $("#stresslayer").delay(0).hide();
                        });
                        /*} else {
                         $("#stresslayer").delay(0).hide();
                         }*/
                        $(this).removeClass("fadein");
                    });


                } else {
                    $(".item:eq(" + (0) + ")").addClass("visible").find("img").addClass("fadein");
                    $(".item:eq(" + (0) + ") img.fadein").stop(true, true).animate({
                        opacity:1
                    }, 500, function () {
                        $(".item:eq(" + (sc_currpos) + ")", itemcontainer).removeClass("visible");
                        sc_currpos = (0);
                        $(".item:eq(" + (sc_currpos) + ")", itemcontainer).addClass("visible");
                        allimages.css("opacity", "0");
                        $(this).css("opacity", "1");
                        //if (currentsitewidth == "screen") {
                        $(".item:eq(" + (sc_currpos) + ") .item_slogan").stop(true, true).animate({
                            opacity:1
                        }, 500, function () {
                            $("#stresslayer").delay(0).hide();
                        });
                        /*} else {
                         $("#stresslayer").delay(0).hide();
                         }*/
                        $(this).removeClass("fadein");
                    });
                }
            }
        });


    }


    // SCREEN VERSION MAINNAV

    if ($("ul#mainnav").length) {

        var mainnav = $("ul#mainnav");
        var menupoint = $("ul#mainnav > li");
        var header_shadow = $("#header_shadow");
        var sub_ul = $("ul", menupoint);

        sub_ul.css("display", "none");

        menupoint.on({
            hover:function () {
                if ($("ul", $(this)).length) {

                    var mp_ul = $(this).find("ul:eq(0)");

                    var mp_ul_height = mp_ul.height();
					$("#header").height(100 + mp_ul_height);
                    mp_ul.stop(true, true).fadeIn(config.menuanimationspeed);

                    if (header_shadow.css("display") == "none") {
                        header_shadow.height(mp_ul_height + 34).fadeIn(config.menuanimationspeed);
                    } else {
                        header_shadow.height(mp_ul_height + 34);
                    }

                } else {
                    header_shadow.hide(0);
                    sub_ul.hide();
                }
            }
        });

        menupoint.on({
            mouseleave:function () {
                $("ul", $(this)).hide();
				$("#header").height("100px");
            }
        });

        mainnav.on({
            mouseleave:function () {
                if (header_shadow.css("display") == "block") {
                    header_shadow.hide(0);
                    sub_ul.hide();
                }
            }
        });

    }


    // BACKBUTTON

    if ($("a.backlink").length) {

        $("a.backlink").on({
            click:function () {
                history.back();
                return false;
            }
        });

    }

    // ELSLIDER

    if ($(".elslider").length) {

        $(".elslider").elSlider({
            visibleitems:1,
            vertical:false,
            continuous:true,
            animationspeed:500,
            numbers:true,
            thumbs:true,
            fadingspeed:0
        });
    }

    // INPUT VALUE SWAP

    if ($("form").length) {
        $('form input').each(function () {
            if ($(this).val() == '') {
                $(this).val($(this).attr('title'));
            }
        });

        var swap_val = [];

        $("input.search").each(function (i) {
            swap_val[i] = $(this).val();
            $(this).focusin(
                function () {
                    if ($(this).val() == swap_val[i]) {
                        $(this).val("");
                    }
                }).focusout(function () {
                    if ($.trim($(this).val()) == "") {
                        $(this).val(swap_val[i]);
                    }
                });
        });

    }


    // ISOTOPE

    if ($("#filter.news").length) {

        var $newscontainer = $("#newsitems");

        // animateionEngine	:	'best-available', 'css', jquery


        $newscontainer.isotope({
            // options

            itemSelector:'.teaser',
            layoutMode:'cellsByRow',
            cellsByRow:{
                columnWidth:320,
                rowHeight:251
            }, animationOptions:{
                duration:750,
                easing:'linear',
                queue:false
            },
            animationEngine:"css"
        }).show();

        var $newsfilteritem = $("#filter.news div");

        $newsfilteritem.click(function () {
            var selector = $(this).attr("data-filter");
            $newsfilteritem.removeClass("active");
            $(this).addClass("active");
            $newscontainer.isotope({
                filter:selector
            });
            var newheight = $("#newsitems").height();
            var limiter_newheight = $("#content > .limiter");

            return false;
        });

    }

    // CONTENTNAV

    if ($("ul.contentnav").length) {
        var cn_link = $("ul.contentnav li a");

        cn_link.on({
            click:function () {
                cn_link.removeClass("active");
                $(this).addClass("active");
                var thishref = $(this).attr("href");
                $.ajax({
                    url:thishref,
                    success:function (data) {
                        $("#contentnav_content").html(data);
                    }
                });

                return false;
            }
        })

    }

});

function enableSlider(item, speed, easing) {

    item.on({
        mouseenter:function () {
            $.doTimeout("slide", config.sliderdelay, function () {
                Slide(easing);
            });
        },
        mouseleave:function () {
            $.doTimeout("slide");
            if (currentsitewidth == "screen") {
                $(".item  .item_slogan").fadeOut("fast");
            }
            $("#itemcontainer").stop().animate({
                top:"200px",
                height:"200px"
            }, 1500, easing, function () {
            });
        }
    });

    function Slide(easing) {
        $("#itemcontainer").stop().animate({
            top:"0px",
            height:"400px"
        }, config.slideranimationspeed, easing, function () {
            if (currentsitewidth == "screen") {
                $(".item  .item_slogan").stop(false, true).fadeIn("fast");
            }
        });
    }

}



