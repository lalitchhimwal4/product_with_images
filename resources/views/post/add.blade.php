<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
    .btn-primary {
        color: #fff;
        background-color: #007bff !important;
        border-color: #007bff;
    }
</style>
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <h1>Add Post</h1>
                    <form method="post" id="uploadForm" class="mt-6 space-y-6" enctype="multipart/form-data">
                        
                        @method('post')
                        <input type="text" class="form-control" name="product_name" id="product_name" placeholder="Enter Product Name"><br>
                        <input type="text" class="form-control" name="product_price" id="product_price" placeholder="Enter Price"><br>
                        <textarea class="form-control" name="product_description" id="product_description" placeholder="Enter Product Description"></textarea><br>
                        <input type="file" class="form-control" name="images[]" id="images" multiple><br>
                        <!-- <button type="button" class="btn btn-primary" id="btn-save" value="add">Save changes</button>
                        <input type="hidden" id="todo_id" name="todo_id" value="0"> -->
                        <div class="card-footer">
                                <button type="submit" class="btn btn-primary"> Upload </button>
                            </div>
                    </form>    
                </div>
            </div>
            <table class="table table-inverse">
                <thead>
                    <tr>
                        <th>Product ID</th>
                        <th>Product Name</th>
                        <th>Product Price</th>
                        <th>Product Description</th>
                        <th>Product Images</th>
                    </tr>
                </thead>
                <tbody id="todos-list" name="todos-list">
                    
                </tbody>
            </table>
        </div>
    </div>
   
</x-app-layout>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js" integrity="sha512-37T7leoNS06R80c8Ulq7cdCDU5MNQBwlYoy1TX/WUsLFC2eYNqtKlV0QjH7r8JpG/S0GUMZwebnVFLPd6SU5yg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
<script>
$(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            
            $("#uploadForm").validate({
                rules: {
                    'images[]': {
                        required: true,
                    }
                },
                messages: {
                    'images[]': {
                        required: "Please upload the image(s)",
                    } 
                },
                submitHandler: function(form, event) {
                    event.preventDefault();
                    let formData = new FormData(form);
                    
                    const totalImages = $("#images")[0].files.length;
                    let images = $("#images")[0];

                    for (let i = 0; i < totalImages; i++) {
                        formData.append('images' + i, images.files[i]);
                    }
                    formData.append('totalImages', totalImages);

                    console.log(formData);

                    $.ajax({
                        url: "{{ route('post.store') }}",
                        type: 'POST',
                        data: formData,
                        processData: false,
                        cache: false,
                        contentType: false,
                        success: function(response) {
                            form.reset();
                            $('#todos-list').empty()
                            $.each(response.data, function (key, val) {
                                var imgtag1 = '';
                                val.product_image.forEach((number, index) => {
                                   
                                    var imagediv = "{{ URL::to('/') }}/uploads/"+number;
                                    var imgtag = "<img style='width:60px;float: left;padding: 2px;' src="+imagediv+">";
                                    imgtag1 += imgtag;
                                });
                                var key = key+1;
                                var data = "<tr><td>"+key+"</td><td>"+val.product_name+"</td><td>"+val.product_price+"</td><td>"+val.product_description+"</td><td>"+imgtag1+"</td></tr>";
                                $('#todos-list').append(data);
                            });
                            
                        }            
                    });
                }
            });
        });

</script>    

