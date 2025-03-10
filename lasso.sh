#!/bin/bash
# dont run this unless you want to experience freeeeeeeeeeeeeeze
declare -a arr=("-a=normalize=False,fit_intercept=False,positive=True,selection=cyclic"
                "-a=normalize=True,fit_intercept=False,positive=True,selection=cyclic"
                "-a=normalize=False,fit_intercept=True,positive=True,selection=cyclic"
                "-a=normalize=True,fit_intercept=True,positive=True,selection=cyclic"
                "-a=normalize=False,fit_intercept=False,positive=False,selection=cyclic"
                "-a=normalize=True,fit_intercept=False,positive=False,selection=cyclic"
                "-a=normalize=False,fit_intercept=True,positive=False,selection=cyclic"
                "-a=normalize=True,fit_intercept=True,positive=False,selection=cyclic"
                "-a=normalize=False,fit_intercept=False,positive=True,selection=random"
                "-a=normalize=True,fit_intercept=False,positive=True,selection=random"
                "-a=normalize=False,fit_intercept=True,positive=True,selection=random"
                "-a=normalize=True,fit_intercept=True,positive=True,selection=random"
                "-a=normalize=False,fit_intercept=False,positive=False,selection=random"
                "-a=normalize=True,fit_intercept=False,positive=False,selection=random"
                "-a=normalize=False,fit_intercept=True,positive=False,selection=random"
                "-a=normalize=True,fit_intercept=True,positive=False,selection=random"
                "-a=normalize=False,fit_intercept=False,positive=True,selection=cyclic -u=true -ul=8"
                "-a=normalize=True,fit_intercept=False,positive=True,selection=cyclic -u=true -ul=8"
                "-a=normalize=False,fit_intercept=True,positive=True,selection=cyclic -u=true -ul=8"
                "-a=normalize=True,fit_intercept=True,positive=True,selection=cyclic -u=true -ul=8"
                "-a=normalize=False,fit_intercept=False,positive=False,selection=cyclic -u=true -ul=8"
                "-a=normalize=True,fit_intercept=False,positive=False,selection=cyclic -u=true -ul=8"
                "-a=normalize=False,fit_intercept=True,positive=False,selection=cyclic -u=true -ul=8"
                "-a=normalize=True,fit_intercept=True,positive=False,selection=cyclic -u=true -ul=8"
                "-a=normalize=False,fit_intercept=False,positive=True,selection=random -u=true -ul=8"
                "-a=normalize=True,fit_intercept=False,positive=True,selection=random -u=true -ul=8"
                "-a=normalize=False,fit_intercept=True,positive=True,selection=random -u=true -ul=8"
                "-a=normalize=True,fit_intercept=True,positive=True,selection=random -u=true -ul=8"
                "-a=normalize=False,fit_intercept=False,positive=False,selection=random -u=true -ul=8"
                "-a=normalize=True,fit_intercept=False,positive=False,selection=random -u=true -ul=8"
                "-a=normalize=False,fit_intercept=True,positive=False,selection=random -u=true -ul=8"
                "-a=normalize=True,fit_intercept=True,positive=False,selection=random -u=true -ul=8"
                "-a=normalize=False,fit_intercept=False,positive=True,selection=cyclic -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=True,fit_intercept=False,positive=True,selection=cyclic -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=False,fit_intercept=True,positive=True,selection=cyclic -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=True,fit_intercept=True,positive=True,selection=cyclic -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=False,fit_intercept=False,positive=False,selection=cyclic -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=True,fit_intercept=False,positive=False,selection=cyclic -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=False,fit_intercept=True,positive=False,selection=cyclic -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=True,fit_intercept=True,positive=False,selection=cyclic -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=False,fit_intercept=False,positive=True,selection=random -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=True,fit_intercept=False,positive=True,selection=random -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=False,fit_intercept=True,positive=True,selection=random -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=True,fit_intercept=True,positive=True,selection=random -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=False,fit_intercept=False,positive=False,selection=random -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=True,fit_intercept=False,positive=False,selection=random -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=False,fit_intercept=True,positive=False,selection=random -u=true -ul=8 -f=method,url,payload_size"
                "-a=normalize=True,fit_intercept=True,positive=False,selection=random -u=true -ul=8 -f=method,url,payload_size"
                )

mkdir -p "results"
for i in "${arr[@]}"
do
   echo "$i"
   touch "results/lasso_$i"
   python src/limython.py -n=3 -l=10000 -m=lasso -r=false -p=best-counter -k=10 $i > "results/lasso_$i" &
done
