const tests = function(fn = <%=modName%>, { strictEqual = false } = {}) {
    const each = util.each;
    const clone = util.clone;
    const isFn = util.isFn;

    function ret(tests) {
        each(tests, test => {
            test = clone(test);
            const expected = test.pop();
            expect(fn.apply(null, test)).to[strictEqual ? 'equal' : 'eql'](
                expected
            );
        });
    };

    if (!isFn(fn)) {
        const tests = fn;
        fn = <%=modName%>;
        return ret(tests);
    }

    return ret;
};

const test = function(fn = <%=modName%>, { strictEqual = false } = {}) {
    const clone = util.clone;
    const isFn = util.isFn;

    function ret(test) {
        test = clone(test);
        const expected = test.pop();
        expect(fn.apply(null, test)).to[strictEqual ? 'equal' : 'eql'](
            expected
        );
    };

    if (!isFn(fn)) {
        const test = fn;
        fn = <%=modName%>;
        return ret(test);
    }

    return ret;
};