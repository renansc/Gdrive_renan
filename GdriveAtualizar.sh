#atualizando lista no gedrive
echo "Atualizando Lista";
`sudo ~/./gdrive list -m 200 --no-header> ~/github/Gdrive_renan/lista_drive.txt`;

#busca qual o arquivo desejado
echo "recebeu por parametro $1";

#obtendo id do arquivo
echo "Obtendo id";

id_arq=`cat -n ~/github/Gdrive_renan/lista_drive.txt|grep $1|cut -c8-40`;
echo "Arquivo Encontrado: $1";
echo "id: $id_arq";

#deletando arquivo
echo "Deletando Arquivo:$1 no Drive";
echo `sudo ~/./gdrive delete --recursive $id_arq`;

#subindo arquivo novo
echo "Subindo Arquivo:$1 do Pc para o Drive";
echo `sudo ~/./gdrive upload --recursive $1`;
echo "Finalizando ...!";
