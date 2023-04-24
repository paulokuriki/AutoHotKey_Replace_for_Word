<base target="_blank">

# AutoHotKey Replace for Word

Repositório Contendo o exemplo do código utilizado na Aula de Aceleração de Laudos da JPR 2023

## 1. Baixe e instale o AutoHotKey.

Durante a instalação, você pode selecionar a versão portable que não necessita de permissão para instalação.

[Homepage do AutoHotKey](https://www.autohotkey.com/)

## 2. Depois, faça o download dos arquivos de exemplo:
Clique sobre os três links abaixo e depois sobre o ícone download.

![Download icon](https://raw.githubusercontent.com/paulokuriki/AutoHotKey_Replace_for_Word/main/download_button.png)

- [FindReplaceList.txt](https://github.com/paulokuriki/AutoHotKey_Replace_for_Word/blob/main/FindReplaceList.txt)
- [Script Replace for Notepad.ahk](https://github.com/paulokuriki/AutoHotKey_Replace_for_Word/blob/main/Script%20Replace%20for%20Notepad.ahk)
- [Script Replace for Word.ahk](https://github.com/paulokuriki/AutoHotKey_Replace_for_Word/blob/main/Script%20Replace%20for%20Word.ahk)

## 3. Os arquivos AHK são os arquivos que contêm o código do script.

Para executá-los, clique duas vezes sobre o arquivo. O AutoHotKey já deve estar previamente instalado.

## 4. O arquivo FindReplaceList.txt contém as frases a serem substituídas.

Para incluir novas frases, edite o arquivo FindReplaceList.txt.

Use **;** para separar a parte a ser procurada e o texto de substituição.

**Exemplo:**

`lombalgia;dor nas costas`

**Atenção:** Como ambos os scripts foram associados à tecla F8, não recomendo abrir ambos ao mesmo tempo. Ou se preferir, edite o código e associe outra tecla de atalho.

## 5. Editando seu script

Você pode clicar com o botão direito do mouse sobre o ícone ao lado do relógio para editar o script. Após salvá-lo, não se esqueça recarregar o script no mesmo ícone localizado ao lado do relógio.

![System Tray](https://raw.githubusercontent.com/paulokuriki/AutoHotKey_Replace_for_Word/main/system_tray.png)

## 6. Para saber mais

Se quiser aprender mais, recomendo começar pelo vídeo tutorial do Anders Jensen

[Tutorial Youtube](https://www.youtube.com/watch?v=YGtgN5mkWYs)

[Documentação Oficial do AutoHotKey](https://www.autohotkey.com/docs/v2/)

## 7. Use e abuse do Chat GPT para criar ou melhorar seus códigos

Sugiro fortemente que assine o serviço Chat GPT Plus que dá acesso ao GPT-4. O resultado é excepcional.

Exemplos de prompts:

### i. Criar um atalho ao clicar Shift+Ctrl+R que abre a máscara de esclerose múltipla no Word, copia o texto, fecha o word e cola o texto na tela de laudo
`Create an AutoHotKey script and assigned it to Shift + Ctrl + R. It must opens a Microsoft Word document called "Máscara Esclerose Múltipla.docx" on my Desktop. Then, select the whole document and copy it to the clipboard. Then, close the Word application.
Then, move the focus to a window whose title is Chrome Web PACS. Paste it on this page.`

### ii. Monitorar se uma janela com o título "Selecionar Máscara" aparece. Se aparecer, selecionar automaticamente a última opção da lista e depois clicar no botão OK
`Create a script in AutoHotKey that runs every 1 second. This script must look for a window whose title is "Selecionar Máscara". It must click on the list object and after is has got foccus, press the key End to select the last item. Then it must press the OK button.`

### iii. Criar um atalho ao clicar Shift+Ctrl+P que clica em uma sequência de coordenadas. Por exemplo, para ajustar o layout do PACS.

Para isso, você usará o aplicativo WindowSpy acessível através do ícone do AutoHotKey perto do relógio do Windows. Posicione o mouse nos locais onde deseja e anote as coordenadas.

`Create a script in AutoHotKey that runs every 1 second. This script must look for a window whose title is "Selecionar Máscara". It must click on the list object and after is has got foccus, press the key End to select the last item. Then it must press the OK button.`

### iv. Trabalho em várias unidades. Como enviar meu script para meu email?
I work on many different computers. Write a script in AutoHotKey that opens my Gmail webpage in Chrome. Then it must attach the script "Meus Scripts Radiologia.ahk" located on my Desktop. The email must be sent to my personal email radiologista_conectado@gmail.com

### v. Gostei do meu script. Como faço para que ele seja executado toda vez que eu ligar meu computador.
How can my AutoHotKey Script run automatically whenever I log on to my computer?


## 8. Se você gosta de tecnologia e inovação na saúde, me siga no LinkedIn

[Linkedin](https://www.linkedin.com/in/paulokuriki/)
