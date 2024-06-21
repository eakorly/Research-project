clear; close all;
N=9;
alpha = [0.7,0.8,0.9,0.95];
%trmax = 0.9;
y_all= zeros(15,N,length(alpha));
for i=1:length(alpha)
    [t,y] = ABCFOCP_PECE3U1(N,alpha(i));
    y_all(:,:,i)= y;
    %plot(t, flipud(y_all(1,:,1)), 'r', t, flipud(y_all(1,:,2)), 'b', t, flipud(y_all(1,:,3)), 'g', t, flipud(y_all(1,:,4)), 'k', 'LineWidth', 2);
%    figure(i)
%    subplot(3,2,1),plot(t,y(1,:),'r','LineWidth',2); xlabel('Number of days');ylabel('Spawning Cells')
%    subplot(3,2,2),plot(t,y(2,:),'b','LineWidth',2); xlabel('Number of days');ylabel('Tumor Cells')
%    subplot(3,2,3),plot(t,y(3,:),'g','LineWidth',2); xlabel('Number of days');ylabel('Reposing Cells')
%    subplot(3,2,4),plot(t,y(5,:),'m','LineWidth',2); xlabel('Number of days');
%    subplot(3,2,5),plot(t,y(6,:),'y','LineWidth',2); xlabel('Number of days');
%    subplot(3,2,6),plot(t,y(7,:),'y','LineWidth',2); xlabel('Number of days');
end
figure;
plot(fliplr(t), y_all(1,:,1)', 'm', fliplr(t), y_all(1,:,2)', 'r', fliplr(t), y_all(1,:,3)', 'b', fliplr(t), y_all(1,:,4)', 'g', 'LineWidth', 2); xlabel('Number of Weeks'); ylabel('Susceptible Humans');
legend('\alpha=0.7', '\alpha=0.8', '\alpha=0.9', '\alpha=0.95')
figure;
plot(fliplr(t),y_all(2,:,1),'m',fliplr(t),y_all(2,:,2),'r',fliplr(t),y_all(2,:,3),'b', fliplr(t), y_all(2,:,4),'g','LineWidth',2); xlabel('Number of Weeks');ylabel('Exp0sed Humans');
legend('\alpha=0.7', '\alpha=0.8', '\alpha=0.9', '\alpha=0.95')
figure;
plot(fliplr(t),y_all(3,:,1),'m',fliplr(t),y_all(3,:,2),'r',fliplr(t),y_all(3,:,3),'b',fliplr(t), y_all(3,:,4),'g','LineWidth',2); xlabel('Number of Weeks');ylabel('Infected Humans');
legend('\alpha=0.7', '\alpha=0.8', '\alpha=0.9', '\alpha=0.95')
figure;
plot(fliplr(t),y_all(4,:,1),'m',fliplr(t),y_all(4,:,2),'r',fliplr(t),y_all(4,:,3),'b',fliplr(t), y_all(4,:,4),'g','LineWidth',2); xlabel('Number of Weeks');ylabel('Recovered Humans');
legend('\alpha=0.7', '\alpha=0.8', '\alpha=0.9', '\alpha=0.95')
figure;
plot(fliplr(t),y_all(5,:,1),'m',fliplr(t),y_all(5,:,2),'r',fliplr(t),y_all(5,:,3),'b',fliplr(t), y_all(5,:,4),'g','LineWidth',2); xlabel('Number of Weeks');ylabel('Vaccinated Humans');
legend('\alpha=0.7', '\alpha=0.8', '\alpha=0.9', '\alpha=0.95')
figure;
plot(fliplr(t), y_all(6,:,1)', 'm', fliplr(t), y_all(6,:,2)', 'r', fliplr(t), y_all(6,:,3)', 'b', fliplr(t), y_all(6,:,4)', 'g', 'LineWidth', 2); xlabel('Number of Weeks'); ylabel('Susceptible Water-bug');
legend('\alpha=0.7', '\alpha=0.8', '\alpha=0.9', '\alpha=0.95')
figure;
plot(fliplr(t),y_all(7,:,1),'m',fliplr(t),y_all(7,:,2),'r',fliplr(t),y_all(7,:,3),'b',fliplr(t), y_all(7,:,4),'g','LineWidth',2); xlabel('Number of Weeks');ylabel('Infected Water-bugs');
legend('\alpha=0.7', '\alpha=0.8', '\alpha=0.9', '\alpha=0.95')



