<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class OverviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.overview.index');
    }

    public function ordersChart(Request $request)
    {
        $group = $request->query('group', 'month');

        $query = Order::select([
            DB::raw('COUNT(*) as count'),
        ])->groupBy([
            'label'
        ])->orderBy('label');

        switch ($group) {
            case 'year':
                $query->addSelect(DB::raw('YEAR(start_meeting) as label'));
                $query->whereYear('start_meeting', '>=', Carbon::now()->subYears(5)->year);
                $query->whereYear('start_meeting', '<=', Carbon::now()->subYears(4)->year);
                break;
            case 'month':
                $query->addSelect(DB::raw('MONTH(start_meeting) as label'));
                $query->whereDate('start_meeting', '>=', Carbon::now()->startOfYear());
                $query->whereDate('start_meeting', '<=', Carbon::now()->endOfYear());
            default:
        }

        $entries = $query->get();
        $labels = $total = $count = [];

        foreach ($entries as $entry) {
            $labels[] = $entry->label;
            $total[$entry->label] = $entry->total;
            $total[$entry->label] = $entry->count;
        }

        return [
            'group' => $group,
            'labels' => array_values($labels),
            'datasets' => [
                [
                    'label' => 'Total Booking',
                    'borderColor' => 'rgba(255, 99, 132, 0.6)',
                    'backgroundColor' => 'rgba(255, 99, 132, 0.6)',
                    'data' => array_values($total),
                ]
            ],
        ];
    }

    public function getMonth($month, $year)
    {
    }
    // public function statistical()
    // {

    //     return view('admin.overview.index', ['post' => $post]);
    // }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        return view('admin.overView.index');
    }
}
