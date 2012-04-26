$(document).ready(function(){
$('#matrix_object_object_type').change(changeOptions);//.trigger('change');
  changeOptions();
});

function changeOptions ()
{
$('#attributes_div').html($('#' + $('#matrix_object_object_type option:selected').first().text().toLowerCase() + '_attributes').html());
}