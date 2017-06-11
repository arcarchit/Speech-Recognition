for i = 1:9
    for j=1:3;
        clc;
        %     Read audio data from train folder for performing operations
        %     st=strcat('train\arc',num2str(i),num2str(j),'.wav');
        %     [s1 fs1 nb1]=wavread(st);
        %     str{i,j} = s1; fstr{i,j} = fs1; nbtr{i,j} = nb1;

        % Read audio data from test folder for performing operations
        st = strcat('test\arc',num2str(i),num2str(j),'.wav');
        [st1 fst1 nbt1] = wavread(st);
        ste{i,j} = st1; fste{i,j} = fst1; nbte{i,j} = nbt1;

        %     % Compute MFCC of the audio data to be used in Speech Processing for Train
        %     % Folder
        %     ctr{i,j} = mfcc(str{i,j},fstr{i,j});

        % Compute MFCC of the audio data to be used in Speech Processing for Test
        % Folder
        a= melcepst(ste{i,j},fste{i,j},'e0dD');
        cte{i,j}=a';
        %cte{i,j} = mfcc(ste{i,j},fste{i,j});

        %     % Compute Vector Quantization of the audio data to be used in Speech
        %     % Processing for Train Folder
        %     dtr{i,j} = vqlbg(ctr{i,j},16);

        % Compute Vector Quantization of the audio data to be used in Speech
        % Processing for Test Folder
        dte{i,j} = vqlbg(cte{i,j},16);

    end

end