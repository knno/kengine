/**
 * @function Options
 * @memberof Kengine
 * @new_name KengineOptions
 * @constructor
 * @param {Struct} opts The options to initialize it with
 * @description A struct that contains key-value pairs to pass to a function as the main argument.
 * Kinda whacky solution to using ...args
 * 
 * @example
 * function MyClassOptions(options) : KengineOptions() constructor {
 *   __start(options);
 *   __add("x", 0);
 *   __add("y", 0);
 *   __add("width");
 *   __add("height");
 *   __done();
 * }
 * 
 * function MyClass(options) constructor {
 *   if not is_instanceof(options, MyClassOptions) {
 *     options = new MyClassOptions(options);
 *   }
 *   width = undefined;
 *   height = undefined;
 *   KengineOptions.__Apply(options, self);
 *   width ??= 60;
 *   height ??= 40;
 * }
 * 
 */
 function KengineOptions(opts) : __KengineStruct() constructor {

    /**
     * @function __Apply
     * @memberof KengineOptions
     * @description Applies the options to the target.
     * @param {Struct} options The options passed to your constructor
     * @param {Struct} target The target to set key-value pairs to.
     * 
     */
    static __Apply = function(options, target) {
        var _names = struct_get_names(options);
        for (var _i=0; _i<array_length(_names); _i++) {
            if string_starts_with(_names[_i], "__") continue;
            if options[$ _names[_i]] == undefined {
                if target[$ _names[_i]] != undefined continue;
            }
            target[$ _names[_i]] = options[$ _names[_i]]
        }
        return true;
    }

	if opts == undefined return;

    __opts = undefined;

    static __done = function(freeze=true) {
        struct_remove(self, "__opts");
        if freeze {
            struct_remove(self, "__add");
            struct_remove(self, "__start");
            struct_remove(self, "__fromArray");
            struct_remove(self, "__fromStruct");
            struct_remove(self, "__done");
        }
    }
    static __start = function(options) {
        self.__opts = options;
    }
    static __add = function(key, default_value=undefined) {
        var _value = __KengineStructUtils.Get(self.__opts, key);
        __KengineStructUtils.Set(self, key, _value ?? default_value);
    }
    static __fromArray = function(array) {
        __start({});
        for (var i=0; i<array_length(array); i++) {
            __add(array[i][0], array[i][1]);
        }
        __done(true);
    }
    static __fromStruct = function(struct) {
        __start({});
        var _keys = struct_get_names(struct);
        for (var _i=0; _i<array_length(_keys); _i++) {
            __add(_keys[_i], struct[$ _keys[_i]]);
        }
        __done(true);
    }

    if is_array(opts) {
        __fromArray(opts);
    } else if is_struct(opts) {
        __fromStruct(opts);
    }
}
