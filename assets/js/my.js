(function ($) {
    $(function () {
        var activeDropdown = null;

        $("nav ul li a:not(:only-child)").click(function (e) {
            var currentDropdown = $(this).siblings(".navi-dropdown");

            if (currentDropdown.is(":visible")) {
                currentDropdown.hide();
                activeDropdown = null;
            } else {
                if (activeDropdown) {
                    activeDropdown.hide();
                }

                currentDropdown.show();
                activeDropdown = currentDropdown;
            }

            e.stopPropagation();
        });

        $("html").click(function () {
            if (activeDropdown) {
                activeDropdown.hide();
                activeDropdown = null;
            }
        });

        $("#nav-toggle").click(function () {
            $("nav ul").slideToggle();
            if (activeDropdown) {
                activeDropdown.hide();
                activeDropdown = null;
            }
        });

        $("#nav-toggle").on("click", function () {
            this.classList.toggle("active");
        });
    });
})(jQuery);
