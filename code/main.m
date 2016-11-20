im=imread('../images/textures/jute.jpg');
[l,h,b] = size(im);
b_size=[floor(l/10),floor(h/10)];
o_size=floor(b_size/6);
out_size=[l,h];
out_image=uint8(zeros(l,h,b));
for i=1:b_size(1)-o_size(1):out_size(1)
    left=min(i+b_size(1)-1,out_size(1));
    for j=1:b_size(2)-o_size(2):out_size(2)
        bottom=min(j+b_size(2)-1,out_size(2));
        tmp = find_patch(out_image(i:left,j:bottom,:),im,b_size,o_size,i,j);
        out_image(i:left,j:bottom,:)=tmp(1:left+1-i,1:bottom+1-j,:);
    end
   l
end
image(out_image);




