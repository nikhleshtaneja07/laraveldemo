<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Excel;
use DB;
use App\news;

class NewsController extends Controller
{
    public function submit(Request $res){
        $path = $res->file->getRealPath();
        $data = Excel::load($path)->get();
        foreach($data as $value){
            $arr[] = [
                'date' => date('Y-m-d', strtotime($value->date)),
                'category' => $value->category,
                'lot_title' => $value->lot_title,
                'lot_location' => $value->lot_location,
                'lot_condition' => $value->lot_condition,
                'pre_tax_amount' => $value->pre_tax_amount,
                'tax_name' => $value->tax_name,
                'tax_amount' => $value->tax_amount 
            ]; 
        }        
        if(!empty($arr)){
            DB::table('news')->insert($arr);
            return back();
        }
    }


    public function export(){
        $news = news::all();
        return Excel::create("sample_filename", function($excel) use ($news){
            $excel->sheet('sheet name', function($sheet) use ($news){
                $sheet->fromArray($news);
            });
        })->download('csv');
    }

    
    public function data() {
        $data1 = DB::table('news')
        ->selectRaw('MONTHNAME(date) month, sum(pre_tax_amount) total_pre_tax_amount, sum(tax_amount) total_tax_amount')
        ->groupBy('month')
        ->get();    

        $data2 = DB::table('news')
        ->selectRaw('category, sum(pre_tax_amount) total_pre_tax_amount, sum(tax_amount) total_tax_amount')
        ->groupBy('category')
        ->get();

        $data = news::latest()->paginate(10);

        return view('form', compact('data1','data2','data'))
        ->with('i', (request()->input('page',1)-1)*10);                
    }

}
