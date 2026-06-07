<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use App\Models\Order;
use App\Models\OrderItem;
use Illuminate\Support\Facades\DB;

class AnalyticsPage extends Page
{
    protected static ?string $navigationIcon  = 'heroicon-o-chart-bar';
    protected static ?string $navigationLabel = 'Analitik';
    protected static ?string $title           = 'Analitik Toko';
    protected static ?string $navigationGroup = null;
    protected static ?int    $navigationSort  = 2;

    protected static string $view = 'filament.pages.analytics-page';

    public string $period = 'today';

    // Public properties agar reaktif saat period berubah
    public array $revenueChartLabels = [];
    public array $revenueChartData   = [];
    public array $busiestHoursLabels = [];
    public array $busiestHoursData   = [];

    public function mount(): void
    {
        $this->loadChartData();
    }

    public function updatedPeriod(): void
    {
        $this->loadChartData();
    }

    public function loadChartData(): void
    {
        $revenueChart = $this->getRevenueChart();

        $this->revenueChartLabels = $revenueChart->pluck('label')->map(function ($l) {
            // Jika period hari ini → format jam "08:00"
            if ($this->period === 'today') {
                return str_pad((string) $l, 2, '0', STR_PAD_LEFT) . ':00';
            }
            // Jika week/month → format tanggal "01 Jun"
            return \Carbon\Carbon::parse($l)->translatedFormat('d M');
        })->values()->toArray();

        $this->revenueChartData = $revenueChart->pluck('total')->values()->toArray();

        $busiestHours = $this->getBusiestHours();

        $this->busiestHoursLabels = $busiestHours->pluck('hour')->map(function ($h) {
            return str_pad((string) $h, 2, '0', STR_PAD_LEFT) . ':00';
        })->values()->toArray();

        $this->busiestHoursData = $busiestHours->pluck('total_orders')->values()->toArray();
    }

    public function getPeriodOptions(): array
    {
        return [
            'today' => 'Hari Ini',
            'week'  => '7 Hari Terakhir',
            'month' => '30 Hari Terakhir',
        ];
    }

    public function getStartDate(): \Carbon\Carbon
    {
        return match ($this->period) {
            'week'  => now()->subDays(7),
            'month' => now()->subDays(30),
            default => now()->startOfDay(),
        };
    }

    public function getRevenueData(): array
    {
        $start = $this->getStartDate();

        $orderIds = Order::where('status', 'selesai')
            ->where('created_at', '>=', $start)
            ->pluck('id');

        $total = OrderItem::whereIn('order_id', $orderIds)
            ->selectRaw('SUM(price * quantity) as total')
            ->value('total') ?? 0;

        $count = $orderIds->count();
        $avg   = $count > 0 ? $total / $count : 0;

        return [
            'total'   => $total,
            'count'   => $count,
            'average' => $avg,
        ];
    }

    public function getTopMenus(): \Illuminate\Support\Collection
    {
        $start = $this->getStartDate();

        return OrderItem::select(
                'menu_item_id',
                DB::raw('SUM(quantity) as total_qty'),
                DB::raw('SUM(price * quantity) as total_revenue')
            )
            ->whereHas('order', function ($q) use ($start) {
                $q->where('status', 'selesai')->where('created_at', '>=', $start);
            })
            ->with('menuItem:id,name')
            ->groupBy('menu_item_id')
            ->orderByDesc('total_qty')
            ->limit(5)
            ->get();
    }

    public function getBusiestHours(): \Illuminate\Support\Collection
    {
        $start = $this->getStartDate();

        return Order::select(
                DB::raw('HOUR(created_at) as hour'),
                DB::raw('COUNT(*) as total_orders')
            )
            ->where('status', 'selesai')
            ->where('created_at', '>=', $start)
            ->groupBy('hour')
            ->orderBy('hour')
            ->get();
    }

    public function getRevenueChart(): \Illuminate\Support\Collection
    {
        $start = $this->getStartDate();

        if ($this->period === 'today') {
            return Order::select(
                    DB::raw('HOUR(orders.created_at) as label'),
                    DB::raw('SUM(order_items.price * order_items.quantity) as total')
                )
                ->join('order_items', 'orders.id', '=', 'order_items.order_id')
                ->where('orders.status', 'selesai')
                ->where('orders.created_at', '>=', $start)
                ->groupBy('label')
                ->orderBy('label')
                ->get();
        }

        return Order::select(
                DB::raw('DATE(orders.created_at) as label'),
                DB::raw('SUM(order_items.price * order_items.quantity) as total')
            )
            ->join('order_items', 'orders.id', '=', 'order_items.order_id')
            ->where('orders.status', 'selesai')
            ->where('orders.created_at', '>=', $start)
            ->groupBy('label')
            ->orderBy('label')
            ->get();
    }

    protected function getViewData(): array
    {
        return [
            'periodOptions' => $this->getPeriodOptions(),
            'revenueData'   => $this->getRevenueData(),
            'topMenus'      => $this->getTopMenus(),
            'busiestHours'  => $this->getBusiestHours(),
            'revenueChart'  => $this->getRevenueChart(),
        ];
    }
}