<?php 

include("cabecera.php");
 require ('validarnum.php'); 
/*codigo php*/
 require ('../config.php'); 
include_once('../conexiones.php');

  $link=conectarse() ;
$var1="";
$var2="";
$var3="";
$var4="";
$var5="";
$var6="";
$var7="";


//buscar por nombre
 $cn=mysql_connect("localhost","root","1234") or die("error en conexion");
if(isset($_POST["btn1"])){
	$btn=$_POST["btn1"];
	$bus=$_POST["txtbus"];

	if($btn=="Buscar"){

$sql="select * from `prestaciones`.`empleados` where nombre='$bus'";


$cs=mysql_query($sql);
while($resul=mysql_fetch_array($cs)){
	$var6=$resul[0];
	$var1=$resul[1];
	$var2=$resul[2];
	$var3=$resul[3];
	$var4=$resul[4];
	$var5=$resul[5];
	$var=$resul[6];
	$var7=$resul[7];

}
	if($var7=="M"){
		$var7="selected";
		}
	}
	
	}
	//ejemplo 2
	
	//buscar por codigo
 
if(isset($_POST["btn1"])){
	$btn=$_POST["btn1"];
	$bus=$_POST["txtbus"];

	if($btn=="Buscar"){

$sql="select * from `prestaciones`.`empleados` where cod='$bus'";


$cs=mysql_query($sql,$cn);
while($resul=mysql_fetch_array($cs)){
	$var6=$resul[0];
	$var1=$resul[1];
	$var2=$resul[2];
	$var3=$resul[3];
	$var4=$resul[4];
	$var5=$resul[5];
	$var=$resul[6];
	$var7=$resul[7];

}
	if($var7=="M"){
		$var7="selected";
		}
	}
	
	}
	///aqui corta
	//buscar por codigo
 
if(isset($_POST["btn1"])){
	$btn=$_POST["btn1"];
	$bus=$_POST["txtbus"];

	if($btn=="Buscar"){

$sql="select * from `prestaciones`.`empleados` where apellido='$bus'";


$cs=mysql_query($sql,$cn);
while($resul=mysql_fetch_array($cs)){
	$var6=$resul[0];
	$var1=$resul[1];
	$var2=$resul[2];
	$var3=$resul[3];
	$var4=$resul[4];
	$var5=$resul[5];
	$var=$resul[6];
	$var7=$resul[7];

}
	
	}

}



	
	if($btn=="Editar"){

	 $x1=$_GET['codigo'];
                


//$cod=strtoupper($_POST["cod"]);
$nombre=strtoupper($_POST["nombre"]);
$apellido=strtoupper($_POST["apellido"]);
$correo=strtoupper($_POST["correo"]);
$ci=strtoupper($_POST["ci"]);
$fechai=strtoupper($_POST["fechai"]);
$ultimal=strtoupper($_POST["ultimal"]);
$cargo=strtoupper($_POST["cargo"]);
$departamento=strtoupper($_POST["departamento"]);
$causa=strtoupper($_POST["causa"]);
$sueldo=strtoupper($_POST["sueldo"]);



if( $nombre=="" )
				{
				
					echo "
   <script> alert('campos vacios')</script>
   ";
					echo "<br>";
					
				}
		else
		   {

//$sql="insert into empleados (cod,nombre,apellido,correo,ci,fechai,sex)values('$cod','$nombre','$apellido','$correo','$ci','$fecha','$sex')";
//update pacientep set p_nom='$nom',

$ultimal2=date("Y-m-d",strtotime($ultimal)); 
$fechai2=date("Y-m-d",strtotime($fechai)); 

$estado='L';

$sql=" UPDATE empleados SET 
nombre='$nombre' ,
apellido='$apellido' ,
correo='$correo' ,
fechai='$fechai2' ,
ultimal='$ultimal2' ,
estado='$estado' where cod='".$x1."'";


//aqui esta la fecha 


$sql2=" UPDATE liquidacion SET 
cargo='$cargo' ,
departamento='$departamento' ,
causa='$causa' ,
sueldo='$sueldo' ,
tiempo='$tiempo' where codigo='".$x1."'";





/*$sql= "UPDATE empleados SET 
nombre = '$nombre'
apellido = '$apellido'
correo = '$correo'
fechai = '$fecha2'
estado = '$estado'
WHERE cedula ='$cedula'
";


	*/

$cs2=mysql_query($sql2,$link)or die("Error: ".mysql_error());
$cs=mysql_query($sql,$link)or die("Error: ".mysql_error());
echo "<script> alert('se edito correctamente $nombre,$apellido,$nuevafecha,$ci,$sex,$departamento,$sueldo".$x1." ')</script>";

}
}
if($btn=="Eliminar"){
$cod=$_POST["cod"];

$sql="delete from liquidacion where codigo='$cod'";

$cs=mysql_query($sql,$link)or die("Error: ".mysql_error());;

echo "<script> alert('se ELIMINO correctamente ')</script>";
		}

		

?>
</br>

<div class="col-md-10">
                            <!-- general form elements -->
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Liquidacion</h3>
                                </div>
								
								<form  name="fe" action="" method="post" >
	
		
		
				
			
				
   	<?
	
	 $x1=$_GET['codigo'];
	
	$query="SELECT * FROM empleados,liquidacion WHERE cod='".$x1."' and codigo='".$x1."'" ;
	$result=mysql_query($query,$link) or die("Error: ".mysql_error());
	 
	
	

	while($Rs=mysql_fetch_array($result)) {
	

	
		?>   
		  </form>
                                <!-- form start -->
                                <form role="form"  name="fe" action="" method="post" >
                                    <div class="box-body">
                                        <div class="form-group">
                                           <center>
				    <label for="exampleInputEmail">Fecha De Entrada:</label>
					<input  required type="text" placeholder="<?php echo $fecha ?>" name="fechai" class="tcal" value="<?php echo $Rs['fechai']; ?>" />
												  <label for="exampleInputEmail">Fecha De Salidad:</label>
											   	<input  required type="text" placeholder="<?php echo $fecha ?>" name="ultimal" class="tcal" value="<?php echo $Rs['ultimal']; ?>" />		
												</br>									   											   
	  
											
											</center>
											<label for="exampleInputFile">Nombre</label>
                                            <input onkeypress="return caracteres(event)" onblur="this.value=this.value.toUpperCase();"  required type="tex" name="nombre" class="form-control" value="<?php echo $Rs['nombre']; ?>" id="exampleInputEmail1" placeholder="Intoducir el Nombre">
											<label for="exampleInputFile">Apellido</label>
											<input  onkeypress="return caracteres(event)" onblur="this.value=this.value.toUpperCase();" required type="tex" name="apellido" class="form-control" value="<?php echo $Rs['apellido']; ?>" id="exampleInputEmail1" placeholder="Apellido">
											<label for="exampleInputFile">cedula</label>
                                            <input  required type="text" onkeydown="return enteros(this, event)" name="ci" class="form-control" value="<?php echo $Rs['cedula']; ?>" id="exampleInputEmail1" placeholder="Cedula">
											<label for="exampleInputFile">correo</label>
											<input  required type="email" name="correo" class="form-control" value="<?php echo $Rs['correo']; ?>"  placeholder="Correo">
											<label for="exampleInputFile">cargo</label>
											<input  required type="tex" name="cargo" class="form-control" value="<?php echo $Rs['cargo']; ?>"  placeholder="Cargo">
											<label for="exampleInputFile">Departamento</label>
											<input  required type="tex" name="departamento" class="form-control" value="<?php echo $Rs['departamento']; ?>"  placeholder="Departamento En El Que Trabajaba">
											<label for="exampleInputFile">Causa</label>
											<input  required type="tex" name="causa" class="form-control" value="<?php echo $Rs['causa']; ?>"  placeholder="causa de liquidacion">
											<label for="exampleInputFile">Sueldo</label>
                                           <input onkeydown="return decimales(this, event)" required type="tex" id="decimal" name="sueldo" class="form-control" value="<?php echo $Rs['sueldo']; ?>"  placeholder="sueldo">
											
  
                                        </div>
                                       
                                  
                                        
                                    </div><!-- /.box-body -->

                                    <div class="box-footer">
									<center>
									
                                        <button name="btn1"  onClick="return confirm('Esta seguro que desea Editar este Registro?');" type="submit" value="Editar" class="btn btn-primary">Editar</button>
										
										
								</center>	
                                    </div>
									 
									
									
									
									
								</div>
								  <?
		  
		   }
		   ?> 	
                                </form>
                            </div><!-- /.box -->



<?php




include("pie.php");

?>