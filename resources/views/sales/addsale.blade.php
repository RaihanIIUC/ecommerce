<x-app-layout>
    <x-slot name="header">

    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

                {{-- form start --}}
                <form class="w-full max-w-lg" method="post" action="{{ route('sales.store') }}">

                    @csrf


                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">


                            <div class="flex justify-center">
                                <div class="mb-3 xl:w-96">
                                    <select class="form-select appearance-none 
      block
      m-0
      focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" name="product_id"
                                        aria-label="Default select example">
                                        <option selected>Product Name</option>
                                        @foreach($products as $item)
                                            <option value={{ $item->id }}>{{ $item->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>


                        </div>
                    </div>


                    <div class="flex flex-wrap -mx-3 mb-6">



                        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                                for="grid-first-name">
                                Quantity
                            </label>
                            <input
                                class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                                name="Quantity" type="number" placeholder="Quantity">
                        </div>



                        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">

                            <div class="flex justify-center">
                                <div class="mb-3 xl:w-96">
                                    <select class="form-select appearance-none
      block
      focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" name="PaymentMode"
                                        aria-label="Default select example">
                                        <option selected>Payment </option>
                                        <option value="Cash">Cash</option>
                                        <option value="Credit">Credit</option>
                                        <option value="MFS">MFS</option>
                                    </select>
                                </div>
                            </div>


                        </div>


                    </div>







                    <div class="flex items-center justify-between">
                        <button
                            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                            type="submit">
                            Add Sale
                        </button>

                    </div>

                </form>
            </div>
        </div>
    </div>
</x-app-layout>
