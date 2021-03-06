Class {
	#name : #BaselineOfBabylonGraphics,
	#superclass : #BaselineOf,
	#category : #BaselineOfBabylonGraphics
}

{ #category : #baselines }
BaselineOfBabylonGraphics >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec baseline: #'UFFIOpenGL' with: [
				spec
					repository: 'github://ronsaldo/uffi-opengl/tonel' ].
		spec 
			package: #'BabylonGraphics-Athens' with: [
				spec requires: #(#'BabylonGraphics-Core' ). ];
			package: #'BabylonGraphics-Core';
			package: #'BabylonGraphics-Examples' with: [
				spec requires: #(#'BabylonGraphics-Core' ). ];
			package: #'BabylonGraphics-OpenGL' with: [
				spec requires: #(#'BabylonGraphics-Core' #'UFFIOpenGL' ). ];
			package: #'BabylonGraphics-SoftRendering' with: [
				spec requires: #(#'BabylonGraphics-Core'). ];
			package: #'BabylonGraphics-Tests' with: [
				spec requires: #('BabylonGraphics-Core' ). ].
		spec group: #'default' with: #(#'BabylonGraphics-Core' #'BabylonGraphics-Examples' #'BabylonGraphics-OpenGL' #'BabylonGraphics-Tests' #'BabylonGraphics-SoftRendering').
		spec group: #'API' with: #(#'BabylonGraphics-Core' #'BabylonGraphics-Examples' #'BabylonGraphics-Tests' #'BabylonGraphics-SoftRendering')
		].
		

]
