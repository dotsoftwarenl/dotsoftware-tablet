var PoliceTabletOpen = false;

OpenPoliceTablet = function() {
    PoliceTabletOpen = true;
    $('.police-tablet').show(250);
}

ClosePoliceTablet = function() {
    PoliceTabletOpen = false;
    $('.police-tablet').hide(250);
    $.post('https://dotsoftware-meos-tablet/CloseTablet', JSON.stringify({}))
}

$(function () {
    window.addEventListener('message', function(event) {
        switch(event.data.action) {
            case "OpenTablet":
                OpenPoliceTablet()
                break;
        }
    });

    window.onkeydown = function(e) {
        var e = e || window.event;
        if (e.keyCode === 27) {
            ClosePoliceTablet();
        }
    };
});


