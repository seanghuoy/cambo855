function show_child_select_parent(value, url, child_id ){
  $.ajax({
      type: "GET",
      contentType: "application/json; charset=utf-8",
      url: url + '/' + value ,
      corssDomain: true,
      dataType: "json",
      success: function (data) {
         var listItems = "<option></option>" ;
         $.each(data,function(key,value){
         listItems+= "<option value='" + value.id + "'>" + value.name + "</option>";
         });
         $(child_id).html(listItems);
         $(child_id).selectpicker('refresh');
      },

      error : function(data) {
        $(child_id).html("<option> Not have yet ...</option>");
      }
  });
}