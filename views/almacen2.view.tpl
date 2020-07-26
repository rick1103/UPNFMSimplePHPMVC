<h1>{{modeDSC2}}</h1>
<section>
    <form action="index.php?page=almacen2&mode2={{mode2}}&almcod2={{almcod2}}" method="post">
        <div class="">
            <label for="amcod2">Codigo 2</label>
            <input type="number" name="almcod2" id="almcod2" value="{{almcod2}}">
        </div>
        <div class="">
            <label for="amcod2">Almacen 2</label>
            <input type="text" name="almdsc2" id="almdsc2" value="{{almdsc2}}">
        </div>
        <div class="">
            <label for="almtip2">Tipo</label>
            <select name="almtip2" id="almtip2">
                <option value="WRH" {{almtip_WRH2}}>Almacén</option>
                <option value="RTL" {{almtip_RTL2}}>Punto de venta</option>
                <option value="TRS" {{almtip_TRS2}}>Almacén  de Distribución</option>
            </select>
        </div>

        <div class="">
            <label for="almest2">Estado</label>
            <select name="almest2" id="almest2">
                <option value="PLN" {{almtip_PLN2}}>En Construccion</option>
                <option value="ACT" {{almtip_ACT2}}>Activo</option>
                <option value="INA" {{almtip_INA2}}>Inactivo</option>
            </select>
        </div>
        <div class="">
        <button type="submit" name="btnGuardar2">Guardar</button>
        &nbsp;
        <button type="submit" name="btnCancelar2">Cancelar</button>
        </div>
        
    </form>
</section>