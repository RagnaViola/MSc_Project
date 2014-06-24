function im = gaborFn(imSize, lamda, sigma, theta, phase, trim)
% Simple function for making a gabor patch
%
% >>  im = gaborFn(imSize, lamda, sigma, theta, phase);
%
%     imSize = 100                           image size: n X n
%     lamda = 10                             wavelength (number of pixels per cycle)
%     theta = 15                             grating orientation
%     sigma = 10                             gaussian standard deviation in
                                       %     pixels, if 0 then don't apply gaussian
%     phase = .25                            phase (0 -> 1)
%     [trim = .005]                          trim off edges of gaussian with values < trim
%
% Run without arguments for demo using above values
if nargin ==0
    imSize = 300;                           % image size: n X n
    lamda = 40;                             % wavelength (number of pixels per cycle)
    theta = 45;                             % grating orientation
    sigma = 50;                             % gaussian standard deviation in pixels
    phase = 0;                            % phase (0 -> 1)
    trim = .005;                           % trim off edges of gaussian with values < trim

    gaborIm = gaborFn(imSize, lamda, sigma, theta, phase, trim);
    imagesc(gaborIm, [-1 1]);
    axis image; axis off; colormap gray(256);
    set(gca,'pos', [0 0 1 1]);
    set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
    return
end

if nargin < 5 && nargin > 0,
    help(mfilename)
    error('Not enough parameters!');
end

if nargin <5
    trim = 0.005;
end

freq = imSize/lamda;                    % compute frequency from wavelength
thetaRad = (theta / 360) * 2*pi;        % convert theta (orientation) to radians
X = 1:imSize;                           % X is a vector from 1 to imageSize
X0 = (X / imSize) - .5;                 % rescale X -> -.5 to .5
phaseRad = (phase * 2* pi);         % convert to radians: 0 -> 2*pi
[Xm Ym] = meshgrid(X0, X0);             % 2D matrices
Xt = Xm * cos(thetaRad);                % compute proportion of Xm for given orientation
Yt = Ym * sin(thetaRad);                % compute proportion of Ym for given orientation
XYt = [ Xt + Yt ];                      % sum X and Y components
XYf = XYt * freq * 2*pi;                % convert to radians and scale by frequency
grating = sin(XYf + phaseRad);                   % make 2D sinewave

im = grating;
if sigma > 0   % if sigma == 0 then don't apply a gaussian
%Make a gaussian mask
s = sigma / imSize;                     % gaussian width as fraction of imageSize
gauss = exp( -(((Xm.^2)+(Ym.^2)) ./ (2* s^2)) ); % formula for 2D gaussian
gauss(gauss < trim) = 0;                 % trim around edges (for 8-bit colour displays)

% Now multply grating and gaussian to get a GABOR
im = grating.* gauss;                % use .* dot-product
end
