  
$(function(){
   
   /**
    * The main jQuery gmap3 function
    */
  $('#gmap3').gmap3({
     map:{
          options: {
//            center:[46.578498,2.457275],
//            zoom: 5,
            mapTypeId: google.maps.MapTypeId.TERRAIN,
            mapTypeControl: false
        }
     },
     marker: {
       values: cities,
       cluster:{
         radius:70,
         // This style will be used for clusters with more than 3 markers
         7: {
           content: "<div class='cluster cluster-1'>CLUSTER_COUNT</div>",
           width: 53,
           height: 52
         },
         // This style will be used for clusters with more than 6 markers
         14: {
           content: "<div class='cluster cluster-2'>CLUSTER_COUNT</div>",
           width: 56,
           height: 55
         },
         // This style will be used for clusters with more than 10 markers
         25: {
           content: "<div class='cluster cluster-3'>CLUSTER_COUNT</div>",
           width: 66,
           height: 65
         }
       },
       options: {
         icon: new google.maps.MarkerImage("http://maps.gstatic.com/mapfiles/icon_green.png")
       },
       events:{
         mouseover: function(marker, event, context){
           $(this).gmap3(
             {clear:"overlay"},
             {
             overlay:{
               latLng: marker.getPosition(),
               options:{
                 content:  "<div class='infobulle'>" +
                             "<div class='bg'></div>" +
                             "<div class='text'><a href='" + context.data.link + "' target='_blank'>" + context.data.city + (context.data.ppl > 0 ? " (" + context.data.ppl + ")" : "") + "<a/></div>" +
                           "</div>" +
                           "<div class='arrow'></div>",
                 offset: {
                   x:-46,
                   y:-73
                 }
               }
             }
           });
         },
         mouseout: function(){
           $(this).gmap3({clear:"overlay"});
         }
       }
     }
   });
   
   
   /**
    * When the arrow button is clicked, move the slider up and change
    * the icons.
    */
   $("#data-btn").click(function(event){
   event.preventDefault();
   if($(this).hasClass("up")){
      $("#gmap3").animate({height:"100%"}, 300, function(){
         $("#data-btn").children('img').attr('src', 'images/up-arrow.png');
      });
      $(this).removeClass("up");
   } else {
      $("#gmap3").animate({height:"60%"}, 300);
      $("#data-btn").children('img').attr('src', 'images/flat-arrow.png');
      $(this).addClass("up");
   }
   return false;
});
});

/**
 * Functions providing a context menu for the map. Not used.
 */
function Gmap3Menu($div) {
    var that = this,
        items = [],
        ts = null,
        namespace = "gmap3-menu";

    function create(item) {
        var $item = $("<div class='item " + item.cl + "'>" + item.label + "</div>");
        $item.click(function () {
            if (typeof item.fnc === "function") {
                item.fnc.apply($(this), []);
            }
        }).hover(function () {
            $(this).addClass("hover");
        }, function () {
            $(this).removeClass("hover");
        });
        return $item;
    };

    function clearTs() {
        if (ts) {
            clearTimeout(ts);
            ts = null;
        }
    }

    function initTs(t) {
        ts = setTimeout(function () {
            that.close()
        }, t);
    }
    this.add = function (label, cl, fnc) {
        items.push({
            label: label,
            fnc: fnc,
            cl: cl
        });
    };
    this.open = function (event) {
        this.close();
        var offset = {
            x: 0,
            y: 0
        }, $menu = $("<div id='" + namespace + "'></div>");
        $.each(items, function (i, item) {
            $menu.append(create(item));
        });
        $menu.hover(function () {
            clearTs();
        }, function () {
            initTs(3000);
        });
        if (event.pixel.y + $menu.height() > $div.height()) {
            offset.y = -$menu.height();
        }
        if (event.pixel.x + $menu.width() > $div.width()) {
            offset.x = -$menu.width();
        }
        $div.gmap3({
            overlay: {
                latLng: event.latLng,
                options: {
                    content: $menu,
                    offset: offset
                },
                tag: namespace
            }
        });
        initTs(5000);
    };
    this.close = function () {
        clearTs();
        $div.gmap3({
            clear: {
                name: "overlay",
                tag: namespace
            }
        });
    };
}