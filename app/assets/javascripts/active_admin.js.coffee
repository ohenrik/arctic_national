#= require active_admin/base
#= require activeadmin-sortable
$ ->
  $('#product_product_category').on 'change', ->
    $('#product_product_sub_category_id').html('')
    $.ajax '/admin/products/' + $(this).val() + '/filtered_sub_categories/' ,
      type: "GET",
      dataType: "JSON",
      asnyc: false,
      success: (data) ->
        for index, item of data
          $('#product_product_sub_category_id').append('<option value="' + item.id + '">' + item.name + '</option>')
