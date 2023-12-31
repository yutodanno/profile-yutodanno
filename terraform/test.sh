          # if git diff --name-only d1fd04bab768f79928d28c756c215acf36ead5a7 a198036c1e7e82098e6d5a9b22988c7953f769e9 | grep -q 'terraform/apim/(a|b|c|d|e)/' ; then
          #   echo "Non-excluded paths changed."
          #   echo "run-job=true" >> test.sh.env
          # else
          #   echo "Only excluded paths changed."
          #   echo "run-job=false" >> test.shd.env
          # fi
          # if git diff --name-only d1fd04bab768f79928d28c756c215acf36ead5a7 7fb621fda206502f4560ac16a0202d821695aa2a | grep -Evq 'terraform/apim/(a|b|c|d|e)/' ; then
          #   echo "Non-excluded paths changed."
          #   echo "run-job=true" >> test.sh.env
          # else
          #   echo "Only excluded paths changed."
          #   echo "run-job=false" >> test.shd.env
          # fi
          # if git diff --name-only d1fd04bab768f79928d28c756c215acf36ead5a7 a198036c1e7e82098e6d5a9b22988c7953f769e9 | grep -Evq 'terraform/apim/(a|b|c|d|e)/' ; then
          #   echo "Non-excluded paths changed."
          #   echo "run-job=true" >> test.sh.env
          # else
          #   echo "Only excluded paths changed."
          #   echo "run-job=false" >> test.shd.env
          # fi
##terraform/test.shのみの差分
# if git diff --name-only d1fd04bab768f79928d28c756c215acf36ead5a7 a198036c1e7e82098e6d5a9b22988c7953f769e9 | grep -qE 'terraform/apim/(a|b|c|d|e)/'; then
#     echo "特定の変更が検出されました。"
#     exit 1  # 戻り値を1に設定
# else
#     echo "特定の変更はありません。"
#     exit 0  # 戻り値を0に設定
# fi

# if git diff --name-only d1fd04bab768f79928d28c756c215acf36ead5a7 7fb621fda206502f4560ac16a0202d821695aa2a | grep -qE '^(api/authorization/|\.github/workflows/main_func-ticketme-authorization-dynamic-dev\.yml)'; then
#     echo "特定の変更が検出されました。"
#     exit 1  # 戻り値を1に設定
# else
#     echo "特定の変更はありません。"
#     exit 0  # 戻り値を0に設定
# fi

if git diff --name-only 6697455874b90ec7a4742275d7c087b14df3a9b2 4aff3068eaafdd636a21cc5cfd3c450527337215| grep -qE  'infra/'; then
    echo "特定の変更が検出されました。"
    exit 1  # 戻り値を1に設定
else
    echo "特定の変更はありません。"
    exit 0  # 戻り値を0に設定
fi



