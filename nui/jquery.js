$(document).ready(function () {
    window.addEventListener("offline", function () {
        $("#displayNui").css("display", "flex")
        $.post(`https://${GetParentResourceName()}/lock`)
    });

    window.addEventListener("online", function () {
        setTimeout(function () {
            $("#displayNui").css("display", "none")
            $.post(`https://${GetParentResourceName()}/unlock`)
        }, 5000)
    });
});
