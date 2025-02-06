echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u varshni057 
    docker tag test varshni057/@Varshni@1407@
    docker push varshni057/@Varshni@1407@
