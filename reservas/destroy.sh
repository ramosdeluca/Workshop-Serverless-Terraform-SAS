executeSls () {
   pwd
   sls remove --stage $1
}

cd api/
executeSls $1


cd ../terraform/environments/$1
pwd
terraform destroy -auto-approve 
pause
