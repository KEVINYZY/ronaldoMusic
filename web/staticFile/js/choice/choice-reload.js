window.onload = function () {
    $(document).on('click', "#songsheet_top li >div", function () {
        window.location.href = "songsheet_info.jsp?slistId=" + $(this).find('h1').text().trim();
    });
    $(document).on('click', "#singer_top li >div", function () {
        window.location.href = "singer_info.jsp?siId=" + $(this).find('h1').text() + "&siName=" + $(this).find('h2').text();
    });
    $(document).on('click', "#mv_top td >div", function () {
        window.location.href = "play-mv.jsp?plId=" + $(this).find('h1').text() + "&siId=" + $(this).find('h2 span:eq(0)').text().trim();
    });
};