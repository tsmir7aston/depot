Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

########## CHIFOUMI##############
#@CINDY
#
######################################
# demander infos utilisateur
cls
write-host "CHIFOUMI , 5 MANCHES"

$nom = read-host "quel est votre prénom ? "
$chance = 5

#Choix
   
   echo "+------------------------+"
   echo "| [ 1 ] : Pierre         |"
   echo "| [ 2 ] : Feuille        |"
   echo "| [ 3 ] : Ciseaux        |" 
   echo "+------------------------+"
 
#Variable user / Variable Ordi

 $resultia = 0
 $resultuser = 0

#Boucle de choix

 do{
        Write-Host $chance
        $chance--
 
  while(1){
   
   $mareponse = Read-Host “Pierre(1), Feuille(2) ou Ciseaux(3)?” 
   if ($mareponse -eq 1 -or $mareponse -eq 2 -or $mareponse -eq 3) {
   break 
   } else{ 
        write-host "Saisir 1, 2 ou 3 NOOB"
        } }

$sareponse = get-random -input 1, 2, 3
Write-host "L'ordinateur choisit au hasard: $sareponse"

#Règles

if($mareponse -eq 1 -and $sareponse -eq 1){
   write-host "équalité" }
   
 
elseif($mareponse -eq 2 -and $sareponse -eq 2){
   write-host "équalité" }

elseif($mareponse -eq 3 -and $sareponse -eq 3){
    write-host "équalité" }

elseif($mareponse -eq 1 -and $sareponse -eq 2){
     write-host "1 point pour IA" 
     $resultia++ }

elseif($mareponse -eq 2 -and $sareponse -eq 1){
     write-host "1 point pour toi" 
     $resultuser++}
   
elseif($mareponse -eq 1 -and $sareponse -eq 3){
    write-host "1 point pour toi" 
    $resultuser}

elseif($mareponse -eq 2 -and $sareponse -eq 3){
     write-host "1 point pour IA"
     $resultia++ }

elseif($mareponse -eq 3 -and $sareponse -eq 1){
     write-host "1 point pour IA" 
     $resultia++}

elseif($mareponse -eq 3 -and $sareponse -eq 2){
     write-host "1 point pour toi" 
     $resultuser++}

 
} 
 while ($chance –ne 0 )
#Résultats

if($resultia -ge 3 ){
    Write-Host "vous avez perdue   :( "}
elseif($resultia -le 2){
    Write-Host "Vous avez gagné $nom !   :) "} 
Start-Sleep -s 5
#Fin du jeu
