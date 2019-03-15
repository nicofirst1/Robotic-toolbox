function Trans = trans_mat(robot,rrange)

homos=homo_mat(robot);
trans=homos(:,:,rrange(1));
for idx=(rrange(1)+1):rrange(2)
    trans=trans*homos(:,:,idx);

end
Trans=simplify(trans);

end

