{* {if ($SESSION != '') && ($admin == 1)} *}
{* {literal} 
    <section id="comentarios-detalle">
            <form>
                <input type="number" id="estrellas" placeholder="Estrellas ">
                <input type="submit" @click= "filtrar"value="Filtrar por Estrellas">
                <input type="submit" @click="mostrarTodos"value="Todos">
            </form>
        <h4 class="h4-puntaje"> <i class="far fa-star"></i>| {{puntos}}</h4>
        <div v-for="comentario in comentarios">
            <div class="comentarios-detalle">
                <h4>{{comentario.username}} • <span class="hora">{{comentario.puntaje}}</span> | <i class="far fa-star" title="puntaje"></i> </h4>
                <p class="p_coment">{{comentario.comentario}}</p>
                <button class="btn_eliminar btn" v-bind:id="comentario.id_comentario" @click="eliminarCommets"><i class="fas fa-trash-alt"></i></button>
            </div>
        </div>
    </section>    
{/literal} *}
    {* {else} *}
{literal}      
        <section id="comentarios-detalle">
            <form >
            <input type="number" id="estrellas" placeholder="Estrellas ">
            <input type="submit" @click= "filtrar"value="Filtrar por Estrellas">
            <input type="submit" @click="mostrarTodos"value="Todos">
        </form>
        <h4 class="h4-puntaje"> <i class="far fa-star"></i>|{{puntos}}</h4>
            <div v-for="comentario in comentarios">
                <div class="comentarios-detalle">
                    <h4>{{comentario.username}} • |  <i class="far fa-star" title="puntaje"></i> {{comentario.puntaje}}</h4>
                    <p class="p_coment">{{comentario.comentario}}</p>
                </div>
            </div>
        </section>    
    {/literal}
{* {/if} *}