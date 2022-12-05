<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Post;
use Illuminate\Http\Request;
use Response;
use Illuminate\Support\Facades\Redirect;
use App\Models\Image;
use Storage;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return view('post.add');
        $post = Post::all();
        return view('post.add')->with(compact('post'));
    }

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
        $request->validate([
            'images' => 'required',
            'images.*' => 'mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
        $product = new Post;
        $product->product_name = $request->product_name;
        $product->product_price = $request->product_price;
        $product->product_description = $request->product_description;
        $product->save();

        if ($request->hasfile('images')) {
            foreach ($request->images as $image) {
                $name = time().rand(1,100).'.'.$image->extension();
                if ($image->move(public_path('uploads'), $name)) {
                    $image = new Image;
                    $image->url = $name;
                    $image->product_id = $product->id;
                    $image->save();
                }
            }
        }else{
            $image = new Image;
            $image->url = 'Image Not Found';
            $image->product_id = $product->id;
            $image->save();
        }
        // $c = Posts::select('Posts.*')
        // ->leftJoin('images', 'Posts.id', '=', 'images.product_id');
        // print_r($c);
        // die();
        $posts = Post::all();
        foreach($posts as $val){
            $id = $val->id;
            $images = Image::where('product_id',$id)->get();
                $product_image = [];
            foreach($images as $data){
                $product_image[] = $data->url;
            }
            $alldata[] = array(
                'product_name' => $val->product_name,
                'product_price' => $val->product_price,
                'product_description' => $val->product_description,
                'product_image' => $product_image
            );
        }

        if ($alldata) {
            return response()->json(['status' => 'success', 'data' => $alldata, 'message' => 'Success!']);
        }
        else {
            return response()->json(['status' => 'failed',  'message' => 'No Data Found']);
        }
         
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        // $users = DB::table('posts')
        //     ->join('images', 'posts.id', '=', 'images.product_id')
        //     ->select('posts.*', 'images.*')
        //     ->get();
       echo "<pre>";

        $c = Post::select('*')
        ->leftJoin('images', 'Posts.id', '=', 'images.product_id')->get();
        print_r($c);
        die();
        
        $posts = Post::all();
        foreach($posts as $val){
            $id = $val->id;
            $images = Image::where('product_id',$id)->get();
            foreach($images as $data){
                $product_image[] = $data->url;
            }
            $alldata[] = array(
                'product_name' => $val->product_name,
                'product_price' => $val->product_price,
                'product_description' => $val->product_description,
                'product_image' => $product_image
            );
        }
        
        // return view('post.list', compact('posts', $posts));
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
    }
}
