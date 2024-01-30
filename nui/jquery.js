$(document).ready(function () {
    window.addEventListener("offline", function () { // Quando a internet do jogador cai o evento é acionado.
        $("#displayNui").css("display", "flex") // Exibe a nui na tela do jogador.
        $.post(`https://${GetParentResourceName()}/lock`) // Manda a informação pro client para ele 'trabalhar'
    });

    window.addEventListener("online", function () { // Quando a internet do jogador volta o evento é acionado
        setTimeout(function () { // Timeout por conta do delay do FiveM
            $("#displayNui").css("display", "none") // Remove a nui da tela do jogador
            $.post(`https://${GetParentResourceName()}/unlock`) // Manda a informação pro client para ele 'trabalhar'
        }, 5000)
    });
});
