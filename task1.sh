while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4 rec_column5 rec_column6
do
  echo "id=$rec_column1"
  echo "location_id=$rec_column2"
  echo "name=$rec_column3" | sed -e "s/\b\(.\)/\u\1/g"
  echo "title=$rec_column4"
  echo "email=$rec_column5"
  echo "department=$rec_column6"
  echo ""
  
done < <(tail -n +2 "C:\Users\nasipov_u\Downloads\accounts.csv") > "C:\Users\nasipov_u\Downloads\new_accounts.csv"



