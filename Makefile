# Makefile - Xepa App
BACKEND_DIR=backend
MOBILE_DIR=mobile

dev:
	cd $(BACKEND_DIR) && npm ci && npm run dev

test:
	cd $(BACKEND_DIR) && npm ci && npm test

stripe-listen:
	stripe listen --forward-to localhost:4000/webhook/stripe

build-android:
	eas build -p android --profile production

upload-android:
	cd fastlane && fastlane android android_release AAB_PATH=../android/app/build/outputs/bundle/release/app-release.aab
