/*
	UPDATING VERSIONS:
	1. Just change the `latestVersion` variable to the new version.
	2. Put the old version into the `otherVersions` array.
	
	PREVIEWING CHANGES:
	-	If you'd like to make future modifications to markdown files and preview them before pushing your changes,
		you can do so with either Python or Node. If you have Node installed you can install Docsify with
		'npm i docsify-cli -g' and then navigate to the docs folder and run 'docsify serve'. With Python you
		can manually serve your docs with 'cd docs && python -m http.server 3000'.
		More info: https://docsify.js.org/#/quickstart
	
	OTHER THINGS OF NOTE:
	-	If you want a different sidebar or navbar for different versions,
		you can just copy and paste the _sidebar.md or _navbar.md from the
		main /docs/ folder into the version folder you'd like and modify it there.
	
	-	This should really be the only file you'll need to mess with, if any other changes are needed
		please let @FaultyFunctions know!
*/

const config = {
	name: 'Kengine',
	description: 'A GameMaker framework for modding support of your projects.',
	latestVersion: '0.2',
	otherVersions: [
		
	],
	favicon: 'assets/favicon.ico',
	themeColor: '#3bb1f8',
};

if (typeof module !== 'undefined') {
	module.exports = config;
}
