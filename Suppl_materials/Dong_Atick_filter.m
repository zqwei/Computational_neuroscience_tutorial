%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% My implementation of Dong-Atick's LGN filter
% 
% Original paper can be check from 
% https://pdfs.semanticscholar.org/790b/5be49f5c7ad02b4ebd4db9967f1d2c26fcae.pdf
%
%
% ==========================================
% Ziqiang Wei
% weiz@janelia.hhmi.org
% 2019-02-06
%
%
%

n  = 10001;
fs = 200;
T  = 1/fs;
t = (0:n-1)*T; % time vector

%% computation from close form solution in Dong-Atick's paper
K_lgn = t.*(1-pi*w0*t).*exp(-2*pi*w0*t);

% this is from rceps(x) in matlab
D = abs(fft(K_lgn));
y = real(ifft(log(D)));
n = length(y);
odd = fix(rem(n,2));
wn = [1; 2*ones((n+odd)/2-1,1) ; ones(1-rem(n,2),1); zeros((n+odd)/2-1,1)];
ym = real(ifft(exp(fft(wn.*y(:)))));

figure;
hold on
plot(t, real(ifft(D)))
plot(t, ym, 'linewid', 2)
plot(t, K_lgn, 'linewid', 2)
legend({'zero-phase filter', 'causal filter', 'true solution'})
xlim([0 0.1])


%% computation with abtriray power function
% time to freqency
w  = linspace(0, fs/2, fix(n/2)+1);
w  = [w, w(end:-1:2)];
w0 = 5.5;

% Qss = 1./(w.^2+w0^2);
% Qii = 0.01;
% D = sqrt(Qss)./(Qss + Qii);

Qss = (1+w.^2/w0^2);
D = w.*sqrt(Qss)./Qss.^2;

figure;
semilogx(w, D)

y = real(ifft(log(D)));
n = length(y);
odd = fix(rem(n,2));
wn = [1; 2*ones((n+odd)/2-1,1) ; ones(1-rem(n,2),1); zeros((n+odd)/2-1,1)];
ym = real(ifft(exp(fft(wn.*y(:)))));

figure;
hold on
plot(t, real(ifft(D)))
plot(t, ym, 'linewid', 2)
xlim([0 0.1])


