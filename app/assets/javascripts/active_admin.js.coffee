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

  $('body').on 'change',  '.item_type', ->
    console.log $(this).val()
    if $(this).val() == 'image'
      $(this).closest('ol').find('.text-fields')
        .addClass("hidden-field")
      $(this).closest('ol').find('.image-fields')
        .removeClass("hidden-field")
    else
      $(this).closest('ol').find('.text-fields')
        .removeClass("hidden-field")
      $(this).closest('ol').find('.image-fields')
        .addClass("hidden-field")
