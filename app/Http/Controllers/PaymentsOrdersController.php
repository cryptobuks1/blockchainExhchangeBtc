<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DataTables; 
use App\Recived_Orders;
class PaymentsOrdersController extends Controller
{
    public function get_all_payments_orders_data()
    {
    	return view('admin.payments_orders.dashboard');
    }


    public function get_all_payments_orders_data_ajax()
    {
    	return datatables()
                ->of(
                    Recived_Orders::latest()
                        ->get()
                )->addColumn(
                    'status',
                    function ($data) {
                        if ($data->status == 'on') {
                            $label = '<span class="label label-success">Confirmed</span>';
                        } else {
                            $label = '<span class="label label-danger">Pendding</span>';
                        }

                        return $label;
                    }
                )->addColumn(
                    'action',
                    function ($data) {
                        $button = '<a class="btn btn-info" href="' . route('edit_order_value', ['id' => $data->id]) . '">
												<i class="halflings-icon white edit"></i>  
											</a>
											<a class="btn btn-danger deleteorderpay" href="#" del-id=' . $data->id . '>
												<i class="halflings-icon white trash"></i> 
											</a>';
                        return $button;
                    }
                )->rawColumns(['action', 'status'])
                ->make(true);
    }
 
// <a class="dropdown-item" href="' . route('edit_auction', ['id' => Crypt::encrypt($data->id)]) . '">Edit</a>
    public function del_pay_order_ajax(Request $request)
    {

 
    	$delorp = Recived_Orders::where('id',$request->payid_id);
        $delorp->delete();
        if ($delorp) {
            return response()->json(['status' => 'ok', 'id' => $request->payid_id]);
        } else {
            return response()
                ->json(['status' => 'error']);
        }

    	
    }
    public function thanks()
    {
    	return view('order_recived_confirmation');
    }
}
