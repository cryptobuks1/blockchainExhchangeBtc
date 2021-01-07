@extends('admin_layout')
@section('admin_content')


					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable" id="dataTablePayment">
						  <thead>
							  <tr>
	                	<th >ID</th>
	                    <th >Order ID</th>
	                    <th >Payment Method</th>
	                    <th >Commission Fee</th>
	                    <th >Recived Amount</th>
	                    <th >Status</th>
	                    <th >Operations</th>
	                </tr>
                </thead>
                
                <tbody>
                </tbody>
            </table>
                 
			
			</div>



@endsection

@section('footer')
   <script type="text/javascript">

 


        
$(document).ready(function() {

       $(document).on('click', '.deleteorderpay', function(){
payid_id = $(this).attr('del-id');


swal({
title: "Are you sure?",
text: "Once deleted, you will not be able to recover this Record!",
icon: "warning",
buttons: true,
dangerMode: true,
})
.then((willDelete) => {
if (willDelete) {
$.ajax({
url:"{{ route('del_pay_order_ajax') }}",
type:"POST",
dataType:"json",
data:{payid_id:payid_id,_token:"{{ csrf_token() }}"},
success:function(res)
{


console.log(res);
if (res.status=='ok'){
$('#dataTablePayment').DataTable().destroy();
load_data();

}else{
swal({
title: "Something Wrong",
text: "",
icon: "warning",
dangerMode: true,
timer: 3000
});
}
}
})
} else {
swal("Your Record is safe!");
}
})
});

function load_data(from_date = '', to_date = '',status='', typep=''){



$('#dataTablePayment').DataTable({
processing: true,
serverSide: true,
responsive: true,
ajax:{
url: "{{ route('get_all_payments_orders_data_ajax') }}",
data:{from_date:from_date, to_date:to_date,status:status,typep:typep}
},
columns:[

{
data: 'id',
name: 'id',
},
{
data: 'order_number',
name: 'order_id',
},
{
data: 'payment_method',
name: 'payment_method',
},

{
data: 'commission_fee',
name: 'commission_fee',
},
{
data: 'recived_total_amount',
name: 'recived_amount',
},
{
data: 'status',
name: 'status'
},
{
data: 'action',
name: 'Operations',
orderable: false
}
]
});
}
load_data();
});
</script>
@endsection