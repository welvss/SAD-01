     $(document).ready(function(){
      var i=1;
     $("#add_row").click(function(){
      $('#addr'+i).html("<td>"+ (i+1) +"</td><td><input name='item_des0"+i+"' type='text' placeholder='Item Description' class='form-control input-md'  /> </td><td><input  name='Qty0"+i+"' type='number' placeholder='Qty'  class='form-control input-md'></td><td><input  name='Unit0"+i+"' type='text' placeholder='Unit'  class='form-control input-md'></td><td><input  name='Unitprice0"+i+"' type='text' placeholder='Unit Price'  class='form-control input-md'></td>");

      $('#tab_logic').append('<tr id="addr'+(i+1)+'"></tr>');
      i++; 
  });
     $("#delete_row").click(function(){
         if(i>1){
         $("#addr"+(i-1)).html('');
         i--;
         }
     });


});
      