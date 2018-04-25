$(function(){
    function intervalo(){
        myVar = setInterval(verificaNovaSenha, 1000);
    }
    intervalo();
	function verificaNovaSenha(){
        $.ajax({
            type    : 'POST',
            url     : 'verifica_senhas',
        })
        .done(function(data){
        	$('#tipoSenha').empty();
        	$('#codSenha').empty();
            $('#tipoSenha').append(data[0].senha['fila']['nome']);
            $('#codSenha').append(data[0].senha['codigo']);
        })
        .fail(function(){
            console.log('error');
        })
    }
})