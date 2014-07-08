function [ stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5 ] = Make_Stimuli(  )
%top_level function to generate the stimuli


orientations = linspace(0,175,36);
frequencies = linspace(1, 20, 36);

%first stimulus
o_index = randi([1,36],1,1);
f_index = randi([1,36],1,1);

o_index_old = 0;
f_index_old = 0;

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_1=orientations(o_index);
f_1=frequencies(f_index);

figure(1)
gaborIm = gaborFn(400, f_1, 50, o_1, 0, .005);
imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(256);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
%saveas(gcf,'Stimulus_1','png')
%imshow(gaborIm,gcf)
stimulus_1=gaborIm;
%imshow(stimulus_1);

%return


%second stimulus
o_index_old = o_index;
f_index_old = f_index;

o_index = randi([1,36],1,1);
f_index = randi([1,36],1,1);

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_2=orientations(o_index);
f_2=frequencies(f_index);

figure(2)
gaborIm = gaborFn(400, f_2, 50, o_2, 0, .005);
imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(256);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
%saveas(gcf, 'Stimulus_2', 'png')
stimulus_2=gaborIm;
%return


%third stimulus
o_index_old = o_index;
f_index_old = f_index;

o_index = randi([1,36],1,1);
f_index = randi([1,36],1,1);

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_3=orientations(o_index);
f_3=frequencies(f_index);

figure(3)
gaborIm = gaborFn(400, f_3, 50, o_3, 0, .005);
imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(256);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
%saveas(gcf, 'Stimulus_3', 'png')
stimulus_3=gaborIm;
%return


%fourth stimulus
o_index_old = o_index;
f_index_old = f_index;

o_index = randi([1,36],1,1);
f_index = randi([1,36],1,1);

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_4=orientations(o_index);
f_4=frequencies(f_index);

figure(4)
gaborIm = gaborFn(400, f_4, 50, o_4, 0, .005);
h=imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(256);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
%saveas(gcf,'Stimulus_4','png')
stimulus_4=gaborIm;
%return

%fifth stimulus
o_index_old = o_index;
f_index_old = f_index;

o_index = randi([1,36],1,1);
f_index = randi([1,36],1,1);

o_index = index_finding(o_index, o_index_old);
f_index = index_finding(f_index, f_index_old);

o_5=orientations(o_index);
f_5=frequencies(f_index);

figure(5)
gaborIm = gaborFn(400, f_5, 50, o_5, 0, .005);
imagesc(gaborIm, [-1 1]);
axis image; axis off; colormap gray(256);
set(gca,'pos', [0 0 1 1]);
set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
%saveas(gcf,'Stimulus_5','png')
stimulus_5=gaborIm;
%return
end

