/**
 * Created by xuan on 16-10-26.
 */
;(function($, window, document, undefined) {
    $.fn.menu = function(options) {
        var loaderMenu = new LoaderMenu(this, options);
        loaderMenu.init();
        return this;
    };

    var LoaderMenu = function(elements, options) {
        this.$element = elements;
        this.defaults = {
            show: "slow"
        };
        this.options = $.extend({}, this.defaults, options);
    };

    LoaderMenu.prototype = {
        /*
            初始化
         */
        init: function() {
            this.loadMenus(this.options.uri);
        },
        /*
            根据数据创建菜单
            data: 数据
            element: 在哪个元素下创建子菜单
         */
        builder: function(data, element) {
            if (data.length == 0) {
                return;
            }
            var $ul_element = $("<ul></ul>");
            for (var i in data) {
                console.log(data[i]);
                var $li_element = $("<li></li>");
                var $a_element = $("<a></a>");
                var href = data[i].url;
                if (href === "") {
                    $a_element.attr("href", "#");
                } else {
                    $a_element.attr("href", href);
                }
                $a_element.data("id", data[i].id);
                $a_element.text(data[i].menuName);
                $li_element.append($a_element);
                $ul_element.append($li_element);
                this.addEvent($a_element);
            }
            element === undefined?this.$element.append($ul_element):element.after($ul_element);
        },
        /*
            根据uri获取menu json数据
            uri： 请求路路径
            element： 在哪个元素下生成子菜单
         */
        loadMenus: function(uri, element) {
            var _this = this;
            $.getJSON(uri, function(data) {
                _this.builder(data, element);
            });
        },
        /*
            为菜单元素绑定事件
            element： 增加点击事件的元素
         */
        addEvent: function(element) {
            var _this = this;
            element.on("click", function() {
                var $ul = element.next();
                if (!$ul.html()) {
                    var id = element.data("id");
                    _this.loadMenus(_this.options.uri + "?parentId=" + id, element);
                } else {
                    $ul.slideToggle(_this.options.show);
                }
            });
        }
    };
})(jQuery, window, document);