<div class="alert alert-info">
      @foreach ($users as $user)
    <tr>
        <td> {{ $user->Nombre }} </td>
        <td> {{ $user -> Edad }} </td>
        <td> {{ $estado? "uno" : "dos" }} </td>
    </tr>
      @if( true )
        <div> show() </div>
      @else
        <div> hide() </div>
      @end
     @end
</div>

@LxPost("")

@foreach ($users as $item)
    @if( $item )
        <div> uno </div>
    @elseif( true )
        <h1> ... </h1>
    @elseif( false )
        <div> dos </div>
    @end

    <div> Final ifs </div>
@end

<div>
    Final
</div>
