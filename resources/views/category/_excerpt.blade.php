<div class="media post">
    <div class="media-body">
        <div class="d-flex align-items-center">
            <h3 class="mt-0">{{ $category->title }}</h3>
            <div class="mx-1">
                <a href="{{ route('category.edit', $category->id) }}" class="btn btn-sm btn-outline-info">Edit</a>
            </div>
            <div class="mx-1">
                <form class="form-delete" method="post" action="{{ route('category.destroy', $category->id) }}">
                    @method('DELETE')
                    @csrf
                    <button type="submit" class="btn btn-sm btn-outline-danger"
                        onclick="return confirm('Are you sure?')">Delete</button>
                </form>
            </div>
        </div>
        <div class="excerpt">{{ Str::limit($category->description, 250) }}</div>
        <p class="lead">
            Created at
            <small class="text-muted">{{ $category->created_date }}</small>
        </p>

    </div>
</div>
