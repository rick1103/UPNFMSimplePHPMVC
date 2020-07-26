<section class="card depth-1">
    <h1>Gestion de Almacenes</h1>
</section>

<table class="full-width">
    <thead>
        <tr>
            <th>Código</th>
            <th>Almacén</th>
            <th>Tipo</th>
            <th>Estado</th>
            <th><a href="index.php?page=almacen2&mode2=INS&almcod2=" class="btn depth-1 s-margin"><span class="ion-plus"></span></a></th>
        </tr>
    </thead>
    <tbody class="zebra hover">

         {{foreach almacenes2}}
        <tr>
            <td>
                {{almcod2}}
            </td>
            <td>
                {{almdsc2}}
            </td>
            <td>
                {{almtyp2}}
            </td>
            <td>
                {{almest2}}
            </td>
            <td>
                <a href="index.php?page=almacen2&mode2=DSP&almcod2={{almcod}}" class="btn depth-1 s-margin"><span class="ion-eye"></span></a>
                <a href="index.php?page=almacen2&mode2=IPD&almcod2={{almcod}}" class="btn depth-1 s-margin"><span class="ion-edit"></span></a>
                <a href="index.php?page=almacen2&mode2=DEL&almcod2={{almcod}}" class="btn depth-1 s-margin"><span class="ion-trash-b"></span></a>
            </td>
        </tr>
        {{endfor almacenes2}}
    </tbody>
</table>