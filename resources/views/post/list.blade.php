
<h1>All Post</h1>
<table> 
    <tr>
        <td><b>S.No.</b></td>
        <td><b>Title</b></td>
        <td><b>Description</b></td>
    </tr>

@foreach($posts as $i => $post)
    <tr>
        <td>{{$i+1}}</td>
        <td>{{$post->title}}</td>
        <td>{{$post->description}}</td>
    </tr>
@endforeach