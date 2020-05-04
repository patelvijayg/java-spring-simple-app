node(){
	stage('check out'){
		echo 'SCM'
        //git url: 'http://localhost:48085/user1/java-spring-simple-app.git'
        git url: 'https://github.com/patelvijayg/java-spring-simple-app.git'
	}
	stage('mavem Package'){
		echo 'Zip it up'
        sh label: 'MVNBuild', script: 'mvn clean package -B -DskipTests'
	}
	stage('Docker Building'){
		echo 'docer build'
        sh 'docker build -t test1 .'
        echo 'docer built'
	}
	stage('pushing'){
		echo 'Pushing'
		sh 'docker image tag test1 localhost:5001/test1'
		sh 'docker image push localhost:5001/test1'
		echo 'Pushed Successfully...'
	}
}
