$(document).ready(function(){
    
    (function($) {
        "use strict";

    
    jQuery.validator.addMethod('answercheck', function (value, element) {
        return this.optional(element) || /^\bcat\b$/.test(value)
    }, "type the correct answer -_-");
    // Regular expresion for double   var patt = new RegExp("[+-]?\\d*\\.?\\d+");
    // validate contactForm form
    $(function() {
        $('#authForm').validate({
            rules: {
                annuite: {
                    required: true,
                    minlength: 1
                },
                duree: {
                    required: true,
                    minlength: 1
                },
                taux: {
                    required: true,
                    minlength: 1
                },
                capital: {
                    required: true,
                    minlength: 1  
                },
                NomCli: {
                    required: true,
                    minlength: 1   
                },
                passwordCli:{
                    required: true,
                    minlength: 1  
                },
                PreCli: {
                    required: true,
                    minlength: 1                     
                },
                AdrCli: {
                    required: true,
                    minlength: 5                      
                },
                VilCli: {
                    required: true,
                    minlength: 1                      
                },
                TelCli: {
                    required: true,
                    minlength: 1                      
                },
                MailCli: {
                    required: true,
                    minlength: 1  
                }
            },
            messages: {
                annuite: {
                    required: "Le champ annuité est important pour cette operation",
                    minlength: "La longueur du champ annuité doit être > 1"
                },
                duree: {
                    required: "La durée de prêt est nécessaire pour ce calcule",
                    minlength: "La longueur de votre durée doit être > 1"
                },
                taux: {
                    required: "Le champ taux d'intérer est nécessaire pour le calcule",
                    minlength: "La longueur du champ taux d'intérer doit être > 1"
                },
                capital: {
                    required: "Le champ capital est nécessaire pour le calcule",
                    minlength: "La longueur du champ capital doit être > 1" 
                },
                NomCli: {
                    required: "Le champ Nom du client est important",
                    minlength: "La longueur du champ nom client doit être > 1" 
                },
                passwordCli:{
                    required: "il faut insérer votre mot de passe",
                    minlength: "Longueur du mot de passe doit être > 1"  
                },
                PreCli: {
                    required: "vous avez un prénom non?! il faut l'insérer",
                    minlength: "Longueur du prénom doit être > 1"  
                },
                AdrCli: {
                    required: "il faut insérer votre addresse afin de vous enregisterer",
                    minlength: "Longueur doit être doit être > 4" 
                },
                VilCli: {
                    required: "il faut insérer votre ville",
                    minlength: "Longueur du ville doit être > 1" 
                },
                TelCli: {
                    required: "il faut insérer votre téléphone",
                    minlength: "Longueur du téléphone doit être > 1" 
                },
                MailCli: {
                    required: "il faut insérer votre adresse mail",
                    minlength: "Longueur du mail doit être > 1" 
                }
            }
        })
    })
        
 })(jQuery)
})