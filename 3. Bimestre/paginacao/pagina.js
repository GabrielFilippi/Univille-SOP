<script>

var teste = [ { frame: 1, carga:300, ref: 270, br: 1, bm: 0 },
		{ frame: 0, carga:126, ref: 259, br: 0, bm: 1},
		{ frame: 3, carga:129, ref: 180, br: 1, bm: 0 }
		{ frame: 4, carga:150, ref: 182, br: 1, bm: 0 }
	] 

function executa_fifo() {

 for (var i=0; i<3; i=i+1) { 	
    return teste[i].frame;
 } 
}

//pega a maior referencia
function executa_lru() {
 var frame = null;
 var numero = 0;
 
 for (var i=0; i<3; i=i+1) {
 	
    if(teste[i].ref > numero){
    	frame =  teste[i].frame
        numero = teste[i].ref
    }
 	   
 } 
 return frame;
}

//pega a maior referencia
function executa_nru() {
 var frame = null;
 var br = 0;
 var bm = 0;
 
 var frame = teste.filter(teste => teste.br == 0 && teste.bm == 0);
 
 if(frame.length == 0){
 	frame = teste.filter(teste => teste.br == 0 && teste.bm == 1);
 }
 
 if(frame.length == 0){
 	frame = teste.filter(teste => teste.br == 1 && teste.bm == 0);
 }
 
 if(frame.length == 0){
 	frame = teste.filter(teste => teste.br == 1 && teste.bm == 1);
 }

 return frame;
}

document.write(executa_fifo());

document.write(executa_lru());

var nru = executa_nru();
document.write(nru[0].frame);

</script>
