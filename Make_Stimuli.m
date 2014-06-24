% Top-level script for generating stimuli.

orientations = linspace(0,175,36);
frequencies = linspace(0, 20, 36);

%first stimulus
o_index = round(rand(1)*36);
f_index = round(rand(1)*36);

o_index_old = 0;
f_index_old = 0;

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_1=orientations(o_index)
f_1=frequencies(f_index)

figure(1)
gaborIm = gaborFn(400, f_1, 50, o_1, 0, .005);
imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(1024);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
saveas(gcf,'Stimulus_1','png')
%return


%second stimulus
o_index_old = o_index;
f_index_old = f_index;

o_index = round(rand(1)*36);
f_index = round(rand(1)*36);

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_2=orientations(o_index)
f_2=frequencies(f_index)

figure(2)
gaborIm = gaborFn(400, f_2, 50, o_2, 0, .005);
imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(1024);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
saveas(gcf, 'Stimulus_2', 'png')
%return


%third stimulus
o_index_old = o_index;
f_index_old = f_index;

o_index = round(rand(1)*36);
f_index = round(rand(1)*36);

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_3=orientations(o_index)
f_3=frequencies(f_index)

figure(3)
gaborIm = gaborFn(400, f_3, 50, o_3, 0, .005);
imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(1024);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
saveas(gcf, 'Stimulus_3', 'png')
%return


%fourth stimulus
o_index_old = o_index;
f_index_old = f_index;

o_index = round(rand(1)*36);
f_index = round(rand(1)*36);

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_4=orientations(o_index)
f_4=frequencies(f_index)

figure(4)
gaborIm = gaborFn(400, f_4, 50, o_4, 0, .005);
h=imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(1024);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
saveas(gcf,'Stimulus_4','png')
%return

%fifth stimulus
o_index_old = o_index;
f_index_old = f_index;

o_index = round(rand(1)*36);
f_index = round(rand(1)*36);

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_5=orientations(o_index)
f_5=frequencies(f_index)

figure(5)
gaborIm = gaborFn(400, f_5, 50, o_5, 0, .005);
imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(1024);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
saveas(gcf,'Stimulus_5','png')
return

