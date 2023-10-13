<div class="media row">

    <div class="media-body col-10">
        <h5 class="mt-0">{{ $product->title }}</h5>
        <p>{{ $product->description }}</p>
        <p><strong>Price:</strong> ${{ $product->price }}</p>
        @if ($product->discount != null)
            <p><strong>Discount:</strong> {{ $product->discount->rate }}%</p>
            <p><strong>Amount:</strong> ${{ $product->amount }}</p>
        @endif
        <p class="lead">
            Created by <span>{{ $product->user->name }}</span>
            <small class="text-muted">{{ $product->created_date }}</small>
        </p>
        <div class="d-flex align-items-center">
            <h3 class="mt-0">{{ $product->code }}</h3>
            <div class="mx-1">
                <a href="{{ route('products.edit', $product->id) }}" class="btn btn-sm btn-outline-info">Edit</a>
            </div>
            <div class="mx-1">
                <form class="form-delete" method="post" action="{{ route('products.destroy', $product->id) }}">
                    @method('DELETE')
                    @csrf
                    <button type="submit" class="btn btn-sm btn-outline-danger"
                        onclick="return confirm('Are you sure?')">Delete</button>
                </form>
            </div>
        </div>
    </div>
    <div class="col-2 justify-content-end">
        <img src="{{ asset('storage/' . $product->photo) }}" alt="Product Image" style="width: 200px;">
    </div>
</div>
<hr>
