#!/usr/bin/env lua

require('tool')
local lu = require('luaunit')
TestSolve = {}
    function TestSolve:testWithExample()
        res = solve(9,"12")
        lu.assertEquals(res, 1)
    end

    function TestSolve:testWithA18()
        res = solve(18,"1994")
        lu.assertEquals(res, 0)
    end

    function TestSolve:testWithA19()
        res = solve(19,"94")
        lu.assertEquals(res, nil)
    end

    function TestSolve:testWithA99()
        res = solve(99,"201720182019")
        lu.assertEquals(res, 9)
    end
    
    function TestSolve:testWithBig()
        res = solve(5999, "123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789")
        lu.assertEquals(res, 128)
    end
    
    
os.exit( lu.LuaUnit.run() )
