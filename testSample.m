classdef testSample < matlab.unittest.TestCase

    methods(Test)
        function test1(testCase)
            disp('test starts');
            testCase.verifyEqual(1,1,'Test Failed');
            disp('test done');
        end
    end
end
