@extends('admin_layout')
@section('admin_content')

	
	   <div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Update Commission Fee</h2>
						@php
							// CH::Get_Latest_Bitcoin_value();
							// CH::Get_Latest_Commision();
							// CH::Get_Latest_Additional_price();
						@endphp
						{{-- <div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div> --}}
					</div>
					<div class="box-content">
						
		
						@if(!empty($all_data))	
						@foreach($all_data as $data)
						<form class="form-horizontal" action="{{URL::to('/update-transection-fee',$data->id)}}" method="post">
						  <fieldset>
							{{csrf_field()}}

							<div class="control-group">
							  <label class="control-label" for="date01">Transaction Fee (%)</label>
							  <div class="controls">
								<input type="text" class="input-xlarge" name="transaction_fee" value="{{ $data->transaction_fee }}" required>
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="date01">Cryptocurrency Additional Price</label>
							  <div class="controls">
								<input type="text" class="input-xlarge" name="cryptocurrency_additional_price" value="{{ $data->cryptocurrency_additional_price }}" required>
							  </div>
							</div>
          				<div class="form-actions">
							  <button type="submit" class="btn btn-primary">Update</button>
							</div>
							 </fieldset>
						</form>  
							@endforeach
							@endif
						  

					</div>
				</div>
			</div>


@endsection