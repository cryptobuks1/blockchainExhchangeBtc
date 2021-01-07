@extends('admin_layout')
@section('admin_content')

	
	    <div class="table-responsive">
            <table id="coins-info-table" class="display coins-table dataTable table table-striped">
                <thead>
	                <tr role="row">
	                	<th >ID</th>
	                    <th >Transaction fee (%)</th>
	                    <th >Cryptocurrency Additional Price</th>
	                    <th >Action</th>
	                </tr>
                </thead>
                
                <tbody>
                	@foreach ($all_data as $data)
                		<tr>
                			<td>{{ $data->id }}</td>
		                	<td>{{ $data->transaction_fee }}</td>
		                    <td>{{ $data->cryptocurrency_additional_price }}</td>
		                    <td><a href="{{URL::to('/edit_value/'.$data->id)}}">Edit</a></td>
	                	</tr>
	                @endforeach
                </tbody>
            </table>
        </div>


@endsection