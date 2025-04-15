flutter_install:
	@brew tap leoafarias/fvm && brew install fvm && echo Y | fvm global 3.24.3 && fvm flutter clean && fvm flutter pub get
clean_ios:
	@cd ios && rm -rf Pods && rm -f Podfile.lock && fvm flutter pub get && fvm flutter precache --ios && pod install --repo-update && cd ..
analyze:
	@fvm flutter analyze --fatal-infos --fatal-warnings
build_runner:
	dart run build_runner build --delete-conflicting-outputs
	
run_test:
	$(MAKE) analyze
	@fvm flutter test --coverage && genhtml coverage/lcov.info -o coverage/html && open coverage/html/index.html
run_uat_cd:
	@git tag -a dev.${VERSION}-${BUILD} -m "dev ${VERSION}(${BUILD})" && git push origin dev.${VERSION}-${BUILD}
run_prod_cd:
	@git tag -a prod.${VERSION}-${BUILD} -m "prod ${VERSION}(${BUILD})" && git push origin prod.${VERSION}-${BUILD}
revert_uat_tag:
	@git tag -d dev.${VERSION}-${BUILD} && git push --delete origin dev.${VERSION}-${BUILD}
revert_prod_tag:
	@git tag -d prod.${VERSION}-${BUILD} && git push --delete origin prod.${VERSION}-${BUILD}
build_ios_uat:
	@flutter build ipa --flavor dev -t lib/main_uat.dart --release --export-options-plist=ios/config/dev/exportOptions.plist
build_android_uat:
	@fvm flutter build appbundle --flavor dev -t lib/main_uat.dart --release
build_web_uat:
	@fvm flutter build web -t lib/main_uat.dart --release
build_ios_prod:
	@fvm flutter build ipa --flavor prod -t lib/main_prod.dart --release --export-options-plist=ios/config/prod/exportOptions.plist
build_android_prod:
	@fvm flutter build appbundle --flavor prod -t lib/main_prod.dart --release
build_web_prod:
	@fvm flutter build web -t lib/main_prod.dart --release
build_apk:
	@fvm flutter build apk --flavor howToKnowMyFuture -t lib/main.dart --release