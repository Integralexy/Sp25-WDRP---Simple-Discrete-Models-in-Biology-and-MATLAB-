Num = randi([1,10]);
Range = 1:1:10;
Past = [0];
check = 0;
IndP = 0;


while check == 0
    Guess = GetGuess();
    
    IndR = 1;
    while IndR == 1
        [IndR, Guess, Past] = CheckRange(Range, Guess, Past); 
    end
    
    [Guess, Past] = CheckPrevGuess(Past,Guess);
    check = CheckGuess(Num,Guess);
    Past = [Past Guess]
end

fprintf('You got it! The number was %1.0f \n', Num);

%============================================%
function [I] = CheckGuess(N,g)
    I = g == N;
    if I == 0
        fprintf('That was not right. Try again. \n')
    end
end

%============================================%
function [g] = GetGuess()
    g = input('Enter a number between 1 and 10 as your guess: ');
end

%============================================%
function [I,g,P] = CheckRange(R,g,P)
    I = g < R(1) || g > R(length(R));

    while I == 1
        fprintf('Your guess was not in the correct range. \n')
        g = GetGuess();
        I = g < R(1) || g > R(length(R));
    end
end

%============================================%
function [g,P,I] = CheckPrevGuess(P,g)
I = 0;
i = 1;
    while length(P) > 0 && I == 0 && i <= length(P)
        I = P(i) == g;
        i = i + 1;
    end

    
    while I == 1
        fprintf('You have already guessed that, try again \n');
        g = GetGuess();
        [P,g,I] = CheckPrevGuess(P,g);
        P = [P, g]
    end
end

%============================================%
