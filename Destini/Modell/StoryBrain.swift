//
//  ChoiceBrain.swift
//  Destini
//
//  Created by Emerson Luiz Firagi on 27/01/22.
//

import Foundation

struct StoryBrain{
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "Seu carro estourou um pneu em uma estrada sinuosa no meio do nada, sem sinal de celular. Você decide pegar carona. Uma caminhonete enferrujada pára ao seu lado. Um homem com um chapéu de abas largas e olhos sem alma abre a porta do passageiro para você e pergunta: 'Precisa de uma carona, garoto?'.",
            choice1: "Eu vou entrar. Obrigado pela ajuda!", choice1Destination: 2,
            choice2: "Melhor perguntar a ele se ele é um assassino primeiro.", choice2Destination: 1
        ),
        Story(
            title: "Ele balança a cabeça lentamente, imperturbável com a pergunta.",
            choice1: "Pelo menos ele é honesto. Eu vou entrar.", choice1Destination: 2,
            choice2: "Espere, eu sei como trocar um pneu.", choice2Destination: 3
        ),
        Story(
            title: "Quando você começa a dirigir, o estranho começa a falar sobre seu relacionamento com a mãe. Ele fica cada vez mais irritado a cada minuto. Ele pede para você abrir o porta-luvas. Dentro você encontra uma faca ensanguentada, dois dedos cortados e uma fita cassete. de Elton John. Ele pega o porta-luvas.",
            choice1: "Eu amo Elton John! Dê-lhe a fita cassete.", choice1Destination: 5,
            choice2: "É ele ou eu! Você pega a faca e o esfaqueia.", choice2Destination: 4
        ),
        Story(
            title: "O quê? Você sabia que os acidentes de trânsito são a segunda principal causa de morte acidental para a maioria das faixas etárias adultas?",
            choice1: "The End", choice1Destination: 0,
            choice2: "The End", choice2Destination: 0
        ),
        Story(
            title: "Enquanto você atravessa o guardrail e se inclina em direção às rochas irregulares abaixo, você reflete sobre a sabedoria duvidosa de esfaquear alguém enquanto eles estão dirigindo um carro em que você está.",
            choice1: "The End", choice1Destination: 0,
            choice2: "The End", choice2Destination: 0
        ),
        Story(
            title: "Você cria laços com o assassino enquanto canta versos de 'Rocket Man'. Ele te deixa na próxima cidade. Antes de você ir, ele pergunta se você conhece algum lugar bom para despejar corpos. Você responde: 'Experimente o cais.",
            choice1: "The End", choice1Destination: 0,
            choice2: "The End", choice2Destination: 0
        )
    ]
    
    func getStoryTitle()-> String{
        return stories[storyNumber].title
    }
    
    
    func getChoice1()-> String{
        return stories[storyNumber].choice1
    }
    
    func getChoice2()-> String{
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String){
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1{
            storyNumber = currentStory.choice1Destination
        }else if userChoice == currentStory.choice2{
            storyNumber = currentStory.choice2Destination
        }
    }
}
