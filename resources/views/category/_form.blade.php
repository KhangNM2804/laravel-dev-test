@csrf
<div class="form-group">
    <label for="category-title">Category Title</label>
    <input type="text" name="title" value="{{ old('title', $category->title) }}" id="category-title"
        class="form-control {{ $errors->has('title') ? 'is-invalid' : '' }}">
    @if ($errors->has('title'))
        <div class="invalid-feedback">
            <strong>{{ $errors->first('title') }}</strong>
        </div>
    @endif
</div>
<div class="form-group">
    <label for="category-description">Description Category</label>
    <textarea name="description" id="category-description" rows="10"
        class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}">{{ old('description', $category->description) }}</textarea>

    @if ($errors->has('description'))
        <div class="invalid-feedback">
            <strong>{{ $errors->first('description') }}</strong>
        </div>
    @endif
</div>
<br>
<div class="form-group">
    <button type="submit" class="btn btn-outline-primary btn-lg">{{ $buttonText }}</button>
</div>
