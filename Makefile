##########################
VERSION=v7.0.4
CODE_SIGN_IDENTITY=chedr
##########################

all :
	git clone --recursive --branch ${VERSION} https://github.com/Codeux-Software/Textual.git Textual-${VERSION}
	cd Textual-${VERSION} && \
	sed -i -e 's/TEXTUAL_BUILT_WITH_LICENSE_MANAGER=1/TEXTUAL_BUILT_WITH_LICENSE_MANAGER=0/' Resources/Build\ Configurations/Shared\ Standard\ Release\ Configuration.xcconfig && \
	echo "CODE_SIGN_IDENTITY = ${CODE_SIGN_IDENTITY}" > Resources/Build\ Configurations/Code\ Signing\ Identity.xcconfig && \
	xcodebuild -scheme 'Textual (Standard Release)' build

clean :
	rm -rf Textual-${VERSION}

install :
	cd Textual-${VERSION} && \
	cp -r Build\ Results/Release/Textual.app ~/Applications
