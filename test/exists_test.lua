require('luacov')
local testcase = require('testcase')
local exists = require('exists')

function testcase.exists()
    -- test that return the file type if pathname is exists
    local t, err = exists('.')
    assert.equal(t, 'directory')
    assert.is_nil(err)

    t = assert(exists('./exists_test.lua'))
    assert.equal(t, 'file')

    -- test that return nil if pathname is not exists
    t, err = exists('./not_exist.txt')
    assert.is_nil(t)
    assert.is_nil(err)

    -- test that return an error if any error occurs
    t, err = exists(string.rep('x', 8192))
    assert.is_nil(t)
    assert.equal(err.type.name, 'ENAMETOOLONG')

    -- test that throws an error if pathname argument is invalid
    err = assert.throws(exists, {})
    assert.match(err, 'pathname must be string')
end

