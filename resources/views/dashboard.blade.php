<x-app-layout>
    <x-slot name="header">
        <a href="{{ route('products.create') }}"
            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full">
            Add Product
        </a>

        <a href="{{ route('sales.create') }}"
            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full">
            Add Sale
        </a>

    </x-slot>

    <div class="py-12">


        <table class="border-separate border border-slate-500 ...">
            <thead>
                <tr>
                    <th rowspan="2" class="border border-slate-600">Sl</th>
                    <th rowspan="2" class="border border-slate-600">Product</th>
                    <th colspan="4" class="border border-slate-600">Cash</th>
                    <th colspan="4" class="border border-slate-600">Credit</th>
                    <th colspan="4" class="border border-slate-600">MFS</th>
                    <th colspan="4" class="border border-slate-600">Total</th>
                </tr>
                <tr>
                    <th colspan="2" class="border border-slate-600">Count</th>
                    <th colspan="2" class="border border-slate-600">Sum of Amount</th>
                    <th colspan="2" class="border border-slate-600">Count</th>
                    <th colspan="2" class="border border-slate-600">Sum of Amount</th>

                    <th colspan="2" class="border border-slate-600">Count</th>
                    <th colspan="2" class="border border-slate-600">Sum of Amount</th>

                    <th colspan="2" class="border border-slate-600">Count</th>
                    <th colspan="2" class="border border-slate-600">Sum of Amount</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Malcolm </td>
                    <td>1961</td>
                    <td>1961</td>
                    <td>1961</td>
                    <td>1961</td>
                    <td>1961</td>
                    <td>1961</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td> Eagles</td>
                    <td>1972</td>
                    <td>1972</td>
                    <td>1972</td>
                    <td>1972</td>
                    <td>1972</td>
                    <td>1972</td>
                </tr>
                <tr>

                    <td>1</td>

                    <td> Star</td>
                    <td>Earth, Wind, and Fire</td>
                    <td>1975</td>
                </tr>
            </tbody>
        </table>

    </div>
    </div>
</x-app-layout>
