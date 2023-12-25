          if git diff --name-only d1fd04bab768f79928d28c756c215acf36ead5a7 7fb621fda206502f4560ac16a0202d821695aa2a | grep -q '^terraform/apim/(a|b|c|d|e)/' ; then
            echo "Non-excluded paths changed."
            echo "run-job=true" >> test.sh.env
          else
            echo "Only excluded paths changed."
            echo "run-job=false" >> test.shd.env
          fi