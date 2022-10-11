classdef MLT_AST_005 < matlab.unittest.TestCase
    % Copyright 2022 The MathWorks, Inc.
    %
    % TEST CASE DESCRIPTION:
    % Test IsEqualTo constraint with verifyThat and assertThat unit test qualifications on
    % all supported data types. (double, single, int8, int16, int32, int64,
    % uint8, uint16, uint32, uint64, enumeration)
    %
    % EXPECTED RESULTS:
    % Test steps 1-10 PASS 4 = 4
    % Test step  11 PASS "abc" = "abc"
    % Test step  12 FAIL "def" = "ded"
    % Test step  13 FAIL 4 = 4.4
    % Test step  14 FAIL 4.5 = 5
    % Test steps 15-24 PASS 4 = 4
    % Test step  25 PASS "abc" = "abc"
    % Test step  26 FAIL "def" = "ded"
    % Test step  27 FAIL 4 = 4.4
    % Test step  28 FAIL 4.5 = 5
    % Test steps 29-30 PASS Bearing.South = Bearing.Southwest
    %     with Bearing is a enumeration class, South (180), Southwest (180)
    %
    % SUPPORTING FILES:
    % None
    properties (TestParameter)
        baselineVal = struct('double', 4, 'single', single(4), 'int8', int8(4), ...
            'uint8', uint8(4), 'int16', int16(4), 'uint16', uint16(4), ...
            'int32', int32(4), 'uint32', uint32(4), 'int64', int64(4), ...
            'uint64', uint64(4), 'stringPos', "abc");
        actualVal = struct('double', 4, 'single', single(4), 'int8', int8(4), ...
            'uint8', uint8(4), 'int16', int16(4), 'uint16', uint16(4), ...
            'int32', int32(4), 'uint32', uint32(4), 'int64', int64(4), ...
            'uint64', uint64(4), 'stringPos',"abc");        
    end
    

    methods (Test, ParameterCombination = 'sequential')

        function testVerifyEqualTo(testCase, actualVal, baselineVal)
            import matlab.unittest.constraints.IsEqualTo;
            testCase.verifyThat(actualVal, IsEqualTo(baselineVal));
        end

        function testAssertEqualTo(testCase, actualVal, baselineVal)
            import matlab.unittest.constraints.IsEqualTo;
            testCase.assertThat(actualVal, IsEqualTo(baselineVal));
        end
    end

end
