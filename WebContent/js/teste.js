$(function() {
	$('#selecionarAtendimento').blur(function() {
        var id = $('#selecionarAtendimento option:selected').val();

        $.ajax({
            type	: 'POST',
            url		: 'buscar_senha',
            data	: ({senha : id}),
        })
        .done(function(data) {
        	
        	if(id != ""){
        		$('#selecionarSenha').empty();
        	}
        	
        	var toAppend = '';
        	for(var i = 0; i < data.length; i++){
        		toAppend += '<option value='+ data[i]['id'] +'>'+ data[i]['codigo'] +'</option>'
        	}
            $('#selecionarSenha').append(toAppend);
            $('#selecionarAtendimento').change(function() {
            	$('#selecionarSenha').empty();
        	});
        })
        .fail(function() {
            console.log("error");
        });
    });
	$('#botaoChamar').click(function(){
		var idSenha = $('#selecionarSenha option:selected').val();
		$.ajax({
			type	: 'POST',
			url		: 'cadastrar_atendimento',
			data	: ({senha
					: idSenha}),
		})
		.done(function(data){
			console.log('success')
		})
        .fail(function() {
            console.log("error");
        });
	})
});