function [Sci, h] = SmoothCiConv(ci,sigma)% SMOOTHCI Smoothes a 2D image.%	SmoothCi(ci,sigma) convolves a 2D image (ci) with a 2D Gaussian %	filter of standard deviation equals to sigma pixels.%		E.g.,% 		ci = double(imread('GenderFG.tiff'));% 		Sci = SmoothCi(ci,20);% 		or [Sci, h] = SmoothCi(ci,20); if the smoothing filter is needed% % Requires the ImageProcessing Toolbox.% % See also DEMOSTAT4CI% % The Stat4Ci toolbox is free (http://mapageweb.umontreal.ca/gosselif/stat4ci.html); if you use % it in your research, please, cite us:%	Chauvin, A., Worsley, K. J., Schyns, P. G., Arguin, M. & Gosselin, F. (2004).  A sensitive %	statistical test for smooth classification images.% % Alan Chauvin & Fr�d�ric Gosselin (frederic.gosselin@umontreal.ca), 20/08/2004TNoyau = 6*sigma;h = fspecial('gaussian',ceil(TNoyau),sigma);Sci = filter2(h,ci);