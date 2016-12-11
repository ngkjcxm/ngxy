/**
 * Created by gcl on 2016/12/9.
 */

$(function () {

    var data = $('#otherPeopleInput').val();
    // init selected people
    data.split(',').forEach(function (ele) {
        if (ele.length != 0) {
            $('#selected').append('<a href="javascript:;" class="list-group-item people">' + ele + '</a>');
        }
    });

    for (var i = 0; i < 20; i++) {
        $('#select-list').append('<a href="javascript:;" class="list-group-item people">老王' + i + '</a>');
    }

    $('.people').click(function () {
        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
        } else {
            $(this).addClass('active');
        }
    });

    $('#add').click(function () {
        $('#select-list > .people').filter('.active').each(function () {
            $(this).removeClass('active');
        }).appendTo('#selected');
    });

    $('#remove').click(function () {
        $('#selected > .people').filter('.active').each(function () {
            $(this).removeClass('active');
        }).appendTo('#select-list');
    });

    $('#addOther').click(function () {
        var val = $('#otherPeople').val();
        if (val.length > 0) {
            $('#otherPeople').val('');
            var $node = $('<a href="javascript:;" class="list-group-item people">' + val + '</a>');
            $('#selected').append($node);
            $node.click(function () {
                if ($(this).hasClass('active')) {
                    $(this).removeClass('active');
                } else {
                    $(this).addClass('active');
                }
            });
        }
    });

    $('#success').click(function () {
        var peoples = '';
        $('#selected > .people').each(function () {
            peoples += $(this).text() + ',';
        })
        $('#otherPeopleInput').val(peoples);
        $('#otherPeopleWindow').modal('hide')
    })
});
