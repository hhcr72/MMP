//************************** */
//funciones de sistema 
//************************** */


//salir de sistema alertify
function salir() {
  alertify.confirm('Monitoreo y Mantenimiento', 
  'Esta segur@ de salir del Sistema ?', 
  function(){ 
    window.location = "/logout";
    //alertify.success('Ok') 
  }, 
  function(){ alertify.error('Cancel')});
Run
}






   
