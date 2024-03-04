function __KengineTests() : __KengineStruct() constructor {

	static name= "Tests"
	static __started = false;
	static fixtures = [] // Default fixtures
	static __testing_tests = [] // Current active tests.

	static Step = function(extension) {
		var _ext = static_get(extension);
		if (not _ext.__started) {
			_ext.__started = true;
		    _ext.test_manager.FindTests();
			_ext.test_manager.Test();
		}
		if (_ext.test_manager != undefined) {
			if (_ext.test_manager.step_enabled) {
					_ext.test_manager.Step();
			}
		}
	}

	static test_manager = new __KengineTestsTestManager()

    static Test = __KengineTestsTest
    static Fixture = __KengineTestsFixture
    static AssertionError = __KengineTestsAssertionError
    static TestManager = __KengineTestsTestManager
}
__KengineTests();


function ken_init_ext_tests() {
	
	if not KENGINE_IS_TESTING return;

	/**
	 * @namespace Tests
	 * @memberof Kengine.Extensions
	 * @description Kengine's Tests extension
	 * 
	 * Note - Disabling copy on write behavior for arrays is required.
	 *
	 */
	var _tests = new __KengineTests();
	Kengine.Extensions.Add(_tests);


    #region Error types
    /**
     * @member {String} tests__test__func_invalid_return
     * @memberof Kengine.Utils.Errors.Types
     * @description Test function did not return a struct.
     */
    Kengine.Utils.Errors.AddType("tests__test__func_invalid_return", "Test function did not return a struct.");

    /**
     * @member {String} tests__fixture__does_not_exist
     * @memberof Kengine.Utils.Errors.Types
     * @description Test fixture does not exist.
     */
    Kengine.Utils.Errors.AddType("tests__fixture__does_not_exist", "Test fixture does not exist.");

    /**
     * @member {String} tests__assertion__is_not
     * @memberof Kengine.Utils.Errors.Types
     * @description Assertion failure.
     */
    Kengine.Utils.Errors.AddType("tests__assertion__is_not", "Assertion failure.");
    #endregion

    #region Events
	/**
	 * @event tests__test__init__before
	 * @type {Array<Function>}
	 * @description An event that fires before initializing a Kengine Test.
	 *
	 * Functions accept two arguments, the second is a struct: `event, {test}`.
	 *
	 * `event`: The event.
	 *
	 * `test`: The {@link Kengine.Extensions.Tests.Test} being constructed.
	 *
	 */
    Kengine.Utils.Events.Define("tests__test__init__before");

    /**
	 * @event tests__test__init__after
	 * @type {Array<Function>}
	 * @description An event that fires after initializing a Kengine Test.
	 *
	 * Functions accept two arguments, the second is a struct: `event, {test}`.
	 *
	 * `event`: The event.
	 *
	 * `test`: The {@link Kengine.Extensions.Tests.Test} being constructed.
	 *
	 */
    Kengine.Utils.Events.Define("tests__test__init__after");
    #endregion
}
