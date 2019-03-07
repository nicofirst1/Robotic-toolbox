function M_r = frame_switch(M,rots)
% Given a matrix M and a list of rotation matrices perform multiplication 
% to M in order to change the frame

M_r=M;
for idx=1:length(rots)
    
    M_r=rots(:,:,idx)*M_r;
    
end

M_r=simplify(M_r);

end

