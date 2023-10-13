@csrf
<div class="form-group">
    <label for="category-code">Category Code</label>
    <input type="text" name="code" id="category-code"
        class="form-control {{ $errors->has('code') ? 'is-invalid' : '' }}" placeholder="Product code"
        value="{{ old('code', $product->code) }}">
    @if ($errors->has('code'))
        <div class="invalid-feedback">
            <strong>{{ $errors->first('code') }}</strong>
        </div>
    @endif
</div>
<div class="form-group">
    <label for="title">Title:</label>
    <input type="text" class="form-control {{ $errors->has('title') ? 'is-invalid' : '' }}" id="title"
        name="title" placeholder="Product title"value="{{ old('title', $product->title) }}">
    @if ($errors->has('title'))
        <div class="invalid-feedback">
            <strong>{{ $errors->first('title') }}</strong>
        </div>
    @endif
</div>
<div class="form-group">
    <label for="price">Price:</label>
    <input type="number" class="form-control {{ $errors->has('price') ? 'is-invalid' : '' }}" id="price"
        name="price" value="{{ old('price', $product->price) }}" placeholder="Product price">
    @if ($errors->has('price'))
        <div class="invalid-feedback">
            <strong>{{ $errors->first('price') }}</strong>
        </div>
    @endif
</div>
<div class="form-group">
    <label for="discount_id">Discount:</label>
    <select class="form-control {{ $errors->has('discount_id') ? 'is-invalid' : '' }}" id="discount_id"
        name="discount_id">
        <option value="">Select Discount</option>
        @foreach ($discounts as $discount)
            <option value="{{ $discount->id }}" {{ $product->discount_id == $discount->id ? 'selected' : '' }}>
                {{ $discount->rate }}</option>
        @endforeach
    </select>
    @if ($errors->has('discount_id'))
        <div class="invalid-feedback">
            <strong>{{ $errors->first('discount_id') }}</strong>
        </div>
    @endif
</div>
<div class="form-group">
    <label for="category_id">Category:</label>
    <select class="form-control {{ $errors->has('category_id') ? 'is-invalid' : '' }}" id="category_id"
        name="category_id">
        <option value="">Select Category</option>
        @foreach ($categories as $category)
            <option value="{{ $category->id }}" {{ $product->category_id == $category->id ? 'selected' : '' }}>
                {{ $category->title }}</option>
        @endforeach
    </select>
    @if ($errors->has('category_id'))
        <div class="invalid-feedback">
            <strong>{{ $errors->first('category_id') }}</strong>
        </div>
    @endif
</div>
<div class="form-group my-3">
    <label for="photo">Photo:</label>
    <input type="file" class="form-control-file {{ $errors->has('photo') ? 'is-invalid' : '' }}" id="photo"
        name="photo">
    @if ($errors->has('photo'))
        <div class="invalid-feedback">
            <strong>{{ $errors->first('photo') }}</strong>
        </div>
    @endif
</div>
<div class="form-group">
    <label for="description">Description:</label>
    <textarea class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}" id="description"
        name="description" rows="3" placeholder="Product description">{{ old('description', $product->description) }}</textarea>
    @if ($errors->has('description'))
        <div class="invalid-feedback">
            <strong>{{ $errors->first('description') }}</strong>
        </div>
    @endif
</div>
<button type="submit" class="btn btn-outline-primary btn-lg my-2">{{ $buttonText }}</button>
