# Kengine  :id=kengine

[Kengine](Kengine) <code>object</code>
<!-- tabs:start -->


##### **Description**

The Kengine namespace.


<!-- tabs:end -->

## Options  :id=kengine-options

Kengine.Options
<!-- tabs:start -->


<!-- tabs:end -->

### Options  :id=kengine-options

`new Kengine.Options(opts)`
<!-- tabs:start -->


##### **Description**

A struct that contains key-value pairs to pass to a function as the main argument.
Kinda whacky solution to using ...args



| Param | Type | Description |
| --- | --- | --- |
| opts | <code>Struct</code> | <p>The options to initialize it with</p> |


##### **Example**

```gml
function MyClassOptions(options) : KengineOptions() constructor {  __start(options);  __add("x", 0);  __add("y", 0);  __add("width");  __add("height");  __done();}function MyClass(options) constructor {  if not is_instanceof(options, MyClassOptions) {    options = new MyClassOptions(options);  }  width = undefined;  height = undefined;  KengineOptions.__Apply(options, self);  width ??= 60;  height ??= 40;}
```
<!-- tabs:end -->

## Struct  :id=kengine-struct

`Kengine.Struct`
<!-- tabs:start -->


##### **Description**

A base struct


<!-- tabs:end -->

## instances  :id=kengine-instances

[Kengine.instances](Kengine?id=kengine.instances) [<code>Collection</code>](Kengine?id=kengine.collection)
<!-- tabs:start -->


##### **Description**

This collection contains all created [Instance](Kengine?id=kengine.instance).


<!-- tabs:end -->

## Extensions  :id=kengine-extensions

[Kengine.Extensions](Kengine?id=kengine.extensions) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

A struct of <code>name</code> as key and <code>extension</code> as value.


<!-- tabs:end -->

### Mods  :id=kengine-extensions-mods

[Kengine.Extensions.Mods](Kengine.Extensions.Mods) <code>object</code>
<!-- tabs:start -->


##### **Description**

Kengine's Mods extension


<!-- tabs:end -->

### Panels  :id=kengine-extensions-panels

[Kengine.Extensions.Panels](Kengine.Extensions.Panels) <code>object</code>
<!-- tabs:start -->


##### **Description**

Kengine's Panels extension


<!-- tabs:end -->

### Tests  :id=kengine-extensions-tests

[Kengine.Extensions.Tests](Kengine.Extensions.Tests) <code>object</code>
<!-- tabs:start -->


##### **Description**

Kengine's Tests extension


<!-- tabs:end -->

### Add  :id=kengine-extensions-add

`Kengine.Extensions.Add(ext)` ⇒ <code>Struct</code>
<!-- tabs:start -->


##### **Description**

Adds a struct to Kengine extensions.</p>
<blockquote>
<p>if your extension returns a struct, then it is added automatically and no need to call this method.
</blockquote>



| Param | Type | Description |
| --- | --- | --- |
| ext | <code>Struct</code> | <p>The extension struct to add.</p> |

<!-- tabs:end -->

### Get  :id=kengine-extensions-get

`Kengine.Extensions.Get(name)` ⇒ <code>Struct</code>
<!-- tabs:start -->


##### **Description**

Returns a Kengine extension by name.



| Param | Type |
| --- | --- |
| name | <code>String</code> | 

<!-- tabs:end -->

### Exists  :id=kengine-extensions-exists

`Kengine.Extensions.Exists(name)` ⇒ <code>Bool</code>
<!-- tabs:start -->


##### **Description**

Returns whether a Kengine extension exists by name.



| Param | Type |
| --- | --- |
| name | <code>String</code> | 

<!-- tabs:end -->

### GetAllNames  :id=kengine-extensions-getallnames

`Kengine.Extensions.GetAllNames()` ⇒ <code>Array</code>
<!-- tabs:start -->


##### **Description**

Gets all Extensions' names.


<!-- tabs:end -->

### GetAll  :id=kengine-extensions-getall

`Kengine.Extensions.GetAll()` ⇒ <code>Array</code>
<!-- tabs:start -->


##### **Description**

Gets all Extensions.


<!-- tabs:end -->

## coroutines  :id=kengine-coroutines

[Kengine.coroutines](Kengine?id=kengine.coroutines) [<code>Array.&lt;Coroutine&gt;</code>](Kengine?id=kengine.coroutine)
<!-- tabs:start -->


##### **Description**

An array of [Coroutine](Kengine?id=kengine.coroutine) that are currently processing.


<!-- tabs:end -->

## current_room_asset  :id=kengine-current_room_asset

[Kengine.current_room_asset](Kengine?id=kengine.current_room_asset) [<code>Asset</code>](Kengine?id=kengine.asset) \| <code>Undefined</code>
<!-- tabs:start -->


##### **Description**

The Room-type [Asset](Kengine?id=kengine.asset) currently active as <code>room</code>.


<!-- tabs:end -->

## asset_type_options  :id=kengine-asset_type_options

[Kengine.asset_type_options](Kengine?id=kengine.asset_type_options) <code>Undefined</code> \| <code>Struct</code>
<!-- tabs:start -->


##### **Description**

The asset type options for Kengine.


<!-- tabs:end -->

### script  :id=kengine-asset_type_options-script

[Kengine.asset_type_options.script](Kengine?id=kengine.asset_type_options.script) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

An [AssetType](Kengine?id=kengine.assettype) definition that represents assets of type script in the YYP only. Required.


<!-- tabs:end -->

### sprite  :id=kengine-asset_type_options-sprite

[Kengine.asset_type_options.sprite](Kengine?id=kengine.asset_type_options.sprite) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

An [AssetType](Kengine?id=kengine.assettype) definition that represents assets of type sprite in the YYP and sprite-type assets.


<!-- tabs:end -->

### path  :id=kengine-asset_type_options-path

[Kengine.asset_type_options.path](Kengine?id=kengine.asset_type_options.path) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

An [AssetType](Kengine?id=kengine.assettype) definition that represents assets of type path in the YYP and path-type assets.


<!-- tabs:end -->

### tileset  :id=kengine-asset_type_options-tileset

[Kengine.asset_type_options.tileset](Kengine?id=kengine.asset_type_options.tileset) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

An [AssetType](Kengine?id=kengine.assettype) definition that represents assets of type tileset in the YYP.


<!-- tabs:end -->

### sound  :id=kengine-asset_type_options-sound

[Kengine.asset_type_options.sound](Kengine?id=kengine.asset_type_options.sound) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

An [AssetType](Kengine?id=kengine.assettype) definition that represents assets of type sound in the YYP and sound-type assets.


<!-- tabs:end -->

### object  :id=kengine-asset_type_options-object

[Kengine.asset_type_options.object](Kengine?id=kengine.asset_type_options.object) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

An [AssetType](Kengine?id=kengine.assettype) definition that represents assets of type object in the YYP and object-type assets. Required.


<!-- tabs:end -->

### rm  :id=kengine-asset_type_options-rm

[Kengine.asset_type_options.rm](Kengine?id=kengine.asset_type_options.rm) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

An [AssetType](Kengine?id=kengine.assettype) definition that represents assets of type rooms in the YYP and room-type assets. Required.


<!-- tabs:end -->

### &lt;kscript&gt;  :id=kengine-asset_type_options-&lt;kscript&gt;

[Kengine.asset_type_options.&lt;kscript&gt;](Kengine?id=kengine.asset_type_options.&lt;kscript&gt;) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

An [AssetType](Kengine?id=kengine.assettype) definition that represents assets of type custom-script (script-type assets), thus can be added or replaced. Required.</p>
<p>This definition name is changeable by changing the value of [KENGINE_CUSTOM_SCRIPT_ASSETTYPE_NAME](KENGINE_CUSTOM_SCRIPT_ASSETTYPE_NAME).


<!-- tabs:end -->

## asset_types  :id=kengine-asset_types

[Kengine.asset_types](Kengine?id=kengine.asset_types) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

The asset types struct of Kengine.



##### **Example**

```gml
Kengine.asset_types.sprites
```
<!-- tabs:end -->

## __uids  :id=kengine-__uids

[Kengine.__uids](Kengine?id=kengine.__uids) <code>Real</code>
<!-- tabs:start -->


##### **Description**

The current UID reached for the Kengine's UID generator.


<!-- tabs:end -->

## main_object  :id=kengine-main_object

[Kengine.main_object](Kengine?id=kengine.main_object) <code>Asset.GMObject</code>
<!-- tabs:start -->


##### **Description**

The main Kengine singleton object. Referenced by <code>Kengine.main_object</code>.


<!-- tabs:end -->

## Utils  :id=kengine-utils

Kengine.Utils <code>object</code>
<!-- tabs:start -->


##### **Description**

Kengine Utils library.


<!-- tabs:end -->

### Arrays  :id=kengine-utils-arrays

[Kengine.Utils.Arrays](Kengine.Utils.Arrays) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine arrays utilitiy functions


<!-- tabs:end -->

### Ascii  :id=kengine-utils-ascii

[Kengine.Utils.Ascii](Kengine.Utils.Ascii) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine ascii utilitiy functions


<!-- tabs:end -->

### Assets  :id=kengine-utils-assets

[Kengine.Utils.Assets](Kengine.Utils.Assets) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine asset utilitiy functions


<!-- tabs:end -->

### Benchmark  :id=kengine-utils-benchmark

[Kengine.Utils.Benchmark](Kengine.Utils.Benchmark) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine benchmark utilitiy functions


<!-- tabs:end -->

### Cmps  :id=kengine-utils-cmps

[Kengine.Utils.Cmps](Kengine.Utils.Cmps) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine comparing functions.


<!-- tabs:end -->

### Coroutine  :id=kengine-utils-coroutine

[Kengine.Utils.Coroutine](Kengine.Utils.Coroutine) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine coroutine utilitiy functions


<!-- tabs:end -->

### Data  :id=kengine-utils-data

[Kengine.Utils.Data](Kengine.Utils.Data) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine data utilitiy functions


<!-- tabs:end -->

### Easing  :id=kengine-utils-easing

[Kengine.Utils.Easing](Kengine.Utils.Easing) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine easing utilitiy functions


<!-- tabs:end -->

### Errors  :id=kengine-utils-errors

[Kengine.Utils.Errors](Kengine.Utils.Errors) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine errors utilitiy functions


<!-- tabs:end -->

### Events  :id=kengine-utils-events

[Kengine.Utils.Events](Kengine.Utils.Events) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine events utilitiy functions


<!-- tabs:end -->

### Extensions  :id=kengine-utils-extensions

[Kengine.Utils.Extensions](Kengine.Utils.Extensions) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine extensions utilitiy functions


<!-- tabs:end -->

### Hashkeys  :id=kengine-utils-hashkeys

[Kengine.Utils.Hashkeys](Kengine.Utils.Hashkeys) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine hashkeys utilitiy functions


<!-- tabs:end -->

### Input  :id=kengine-utils-input

[Kengine.Utils.Input](Kengine.Utils.Input) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine input utilitiy functions


<!-- tabs:end -->

### Instance  :id=kengine-utils-instance

[Kengine.Utils.Instance](Kengine.Utils.Instance) <code>object</code>
<!-- tabs:start -->


##### **Description**

Kengine Instance Utils.


<!-- tabs:end -->

### Parser  :id=kengine-utils-parser

[Kengine.Utils.Parser](Kengine.Utils.Parser) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine parser utilitiy functions


<!-- tabs:end -->

### Strings  :id=kengine-utils-strings

[Kengine.Utils.Strings](Kengine.Utils.Strings) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine strings utilitiy functions


<!-- tabs:end -->

### Structs  :id=kengine-utils-structs

[Kengine.Utils.Structs](Kengine.Utils.Structs) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine structs utilitiy functions


<!-- tabs:end -->

### Tiles  :id=kengine-utils-tiles

[Kengine.Utils.Tiles](Kengine.Utils.Tiles) <code>object</code>
<!-- tabs:start -->


##### **Description**

A struct containing Kengine tiles, tilesets and tilemaps utilitiy functions


<!-- tabs:end -->

### GetAsset  :id=kengine-utils-getasset

`Kengine.Utils.GetAsset(asset_type, id_or_name)` ⇒ [<code>Asset</code>](Kengine?id=kengine.asset) \| <code>Undefined</code>
<!-- tabs:start -->


##### **Description**

Retrieves a [Asset](Kengine?id=kengine.asset) from <code>asset_type</code> (if loaded).


**Returns**: [<code>Asset</code>](Kengine?id=kengine.asset) \| <code>Undefined</code> - An asset, or <code>undefined</code>.  

| Param | Type | Description |
| --- | --- | --- |
| asset_type | [<code>AssetType</code>](Kengine?id=kengine.assettype) \| <code>String</code> | <p>The type of the asset to retrieve.</p> |
| id_or_name | <code>Real</code> \| <code>String</code> | <p>The real ID or name of the asset.</p> |

<!-- tabs:end -->

### Execute  :id=kengine-utils-execute

`Kengine.Utils.Execute(script_or_method, [args])` ⇒ <code>Any</code>
<!-- tabs:start -->


##### **Description**

A replacement for <code>execute_script</code>. Executes the script or method or a script-type asset.


**Returns**: <code>Any</code> - The return of the script.  

| Param | Type | Description |
| --- | --- | --- |
| script_or_method | <code>function</code> \| [<code>Asset</code>](Kengine?id=kengine.asset) | <p>The script or method to execute.</p> |
| [args] | <code>Array.&lt;Any&gt;</code> | <p>arguments to use in an array.</p> |

<!-- tabs:end -->

## Asset  :id=kengine-asset

`Kengine.Asset(type, name, [is_yyp], [real_id], [real_name], [auto_index])`
<!-- tabs:start -->


##### **Description**

An asset that represents sprites, objects, rooms, and can be any other customly defined assets.



| Param | Type | Default | Description |
| --- | --- | --- | --- |
| type | <code>String</code> \| [<code>AssetType</code>](Kengine?id=kengine.assettype) |  | <p>The AssetType or its name that this Asset belongs to.</p> |
| name | <code>String</code> |  | <p>The name of this Asset. This name should be the same as the name of the <code>YYAsset</code> if it represents one.</p> |
| [is_yyp] | <code>Bool</code> | <code>false</code> | <p>Whether this asset is a representation of a real YYAsset. Defaults to <code>false</code>.</p> |
| [real_id] | <code>Real</code> \| <code>Asset</code> |  | <p>The real ID of this Asset. This id should be the same as the ID of the <code>YYAsset</code> if it represents one. Otherwise it is automatically assigned.</p> |
| [real_name] | <code>String</code> |  | <p>The real name of this Asset. This name should be the same as the name of the <code>YYAsset</code> if it represents one. Otherwise you can assign any name.</p> |
| [auto_index] | <code>Bool</code> | <code>true</code> | <p>Whether to index the asset or not. Defaults to <code>true</code>.</p> |


##### **Example**

```gml
// This example creates a new room asset, that is indexed automatically, and adds "MyTag" to its tags.my_asset = new Kengine.Asset(my_asset_type, "rm_init", rm_init);my_asset.tags.AddOnce("MyTag");
```
<!-- tabs:end -->

### index  :id=kengine-asset-index

[Kengine.Asset.index](Kengine?id=kengine.asset.index) <code>Real</code>
<!-- tabs:start -->


##### **Description**

The index of the asset in the asset type collection.


<!-- tabs:end -->

### type  :id=kengine-asset-type

[Kengine.Asset.type](Kengine?id=kengine.asset.type) [<code>AssetType</code>](Kengine?id=kengine.assettype)
<!-- tabs:start -->


##### **Description**

The type of the asset.


<!-- tabs:end -->

### name  :id=kengine-asset-name

[Kengine.Asset.name](Kengine?id=kengine.asset.name) <code>String</code>
<!-- tabs:start -->


##### **Description**

The name of the asset.


<!-- tabs:end -->

### id  :id=kengine-asset-id

[Kengine.Asset.id](Kengine?id=kengine.asset.id) <code>Real</code>
<!-- tabs:start -->


##### **Description**

The real ID of the asset.


<!-- tabs:end -->

### index  :id=kengine-asset-index

[Kengine.Asset.index](Kengine?id=kengine.asset.index) <code>Real</code> \| <code>Undefined</code>
<!-- tabs:start -->


##### **Description**

The index of the asset.


<!-- tabs:end -->

### __original_name  :id=kengine-asset-__original_name

[Kengine.Asset.__original_name](Kengine?id=kengine.asset.__original_name) <code>String</code>
<!-- tabs:start -->


##### **Description**

The same as <code>name</code> of the asset object, This is not necessarily the real name.


<!-- tabs:end -->

### __is_renamed  :id=kengine-asset-__is_renamed

[Kengine.Asset.__is_renamed](Kengine?id=kengine.asset.__is_renamed) <code>Bool</code>
<!-- tabs:start -->


##### **Description**

Whether this asset has been renamed. The original name is at [__original_name](Kengine?id=kengine.asset.__original_name) attribute.


<!-- tabs:end -->

### __is_yyp  :id=kengine-asset-__is_yyp

[Kengine.Asset.__is_yyp](Kengine?id=kengine.asset.__is_yyp) <code>Bool</code>
<!-- tabs:start -->


##### **Description**

Whether this asset's <code>id</code> is the real ID of a <code>YYAsset</code>.


<!-- tabs:end -->

### real_name  :id=kengine-asset-real_name

[Kengine.Asset.real_name](Kengine?id=kengine.asset.real_name) <code>String</code>
<!-- tabs:start -->


##### **Description**

The real name of the asset (For YYAssets compatibility).


<!-- tabs:end -->

### tags  :id=kengine-asset-tags

[Kengine.Asset.tags](Kengine?id=kengine.asset.tags) [<code>Collection</code>](Kengine?id=kengine.collection) \| <code>Undefined</code>
<!-- tabs:start -->


##### **Description**

A Kengine.Collection of the tags associated with the asset.


<!-- tabs:end -->

### GetReplacement  :id=kengine-asset-getreplacement

`Kengine.Asset.GetReplacement([replaced_by_max], [replaces_max])` ⇒ [<code>Array.&lt;Asset&gt;</code>](Kengine?id=kengine.asset)
<!-- tabs:start -->



| Param | Type | Default |
| --- | --- | --- |
| [replaced_by_max] | <code>Real</code> | <code>-1</code> | 
| [replaces_max] | <code>Real</code> | <code>-2</code> | 

<!-- tabs:end -->

## AssetType  :id=kengine-assettype

`Kengine.AssetType(name, [asset_kind], [indexing_options], [var_struct])`
<!-- tabs:start -->


##### **Description**

An asset type is a group of assets, such as rooms or custom levels. It can be a custom type (<code>KAsset</code>) or default type (<code>YYAsset</code>).



| Param | Type | Default | Description |
| --- | --- | --- | --- |
| name | <code>String</code> |  | <p>The name of the asset type (in singular form).</p> |
| [asset_kind] | <code>Constant.AssetType</code> \| <code>String</code> | <code>KENGINE_CUSTOM_ASSET_KIND</code> | <p>A default asset kind if it's a YYAsset (asset_room, asset_object, etc.) or [KENGINE_CUSTOM_ASSET_KIND](KENGINE_CUSTOM_ASSET_KIND) if it's custom.</p> |
| [indexing_options] | <code>Struct</code> \| <code>Undefined</code> |  | <p>A struct containing key-value configuration for indexing of this asset type. [IndexingOptions](Kengine?id=kengine.assettype.indexingoptions)</p> |
| [var_struct] | <code>Struct</code> \| <code>Undefined</code> |  | <p>A struct of attributes to add to this asset type. If there is a function value, it is copied as a method with self as this asset type.</p> |

<!-- tabs:end -->

### name  :id=kengine-assettype-name

[Kengine.AssetType.name](Kengine?id=kengine.assettype.name) <code>String</code>
<!-- tabs:start -->


##### **Description**

The name property of the AssetType. Can be provided in creation options. Required.


<!-- tabs:end -->

### is_addable  :id=kengine-assettype-is_addable

[Kengine.AssetType.is_addable](Kengine?id=kengine.assettype.is_addable) <code>Bool</code>
<!-- tabs:start -->


##### **Description**

Whether assets can be added to this asset type in general. Can be provided in creation options.


**Default**: <code>true</code>  
<!-- tabs:end -->

### is_replaceable  :id=kengine-assettype-is_replaceable

[Kengine.AssetType.is_replaceable](Kengine?id=kengine.assettype.is_replaceable) <code>Bool</code>
<!-- tabs:start -->


##### **Description**

Whether assets can be added to this asset type in general. Can be provided in creation options.


**Default**: <code>true</code>  
<!-- tabs:end -->

### asset_kind  :id=kengine-assettype-asset_kind

[Kengine.AssetType.asset_kind](Kengine?id=kengine.assettype.asset_kind) <code>String</code> \| <code>Constant.AssetType</code> \| <code>Any</code>
<!-- tabs:start -->


##### **Description**

The <code>asset_kind</code> property of the AssetType. Can be provided in creation options. Defaults to <code>[KENGINE_CUSTOM_ASSET_KIND](KENGINE_CUSTOM_ASSET_KIND)</code>.


**Default**: <code>KENGINE_CUSTOM_ASSET_KIND</code>  
<!-- tabs:end -->

### rename_rules  :id=kengine-assettype-rename_rules

[Kengine.AssetType.rename_rules](Kengine?id=kengine.assettype.rename_rules) <code>Undefined</code> \| <code>Array.&lt;Struct&gt;</code>
<!-- tabs:start -->


##### **Description**

A set of rules to rename assets.</p>
<p>Each rule (struct) contains <code>{kind, search, replace_by}</code></p>
<p><code>kind</code>: Search kind as a string, one of <code>&quot;prefix&quot;, &quot;suffix&quot;, &quot;any&quot;, &quot;one&quot;</code>. Where any means anywhere in the name.</p>
<p><code>search</code>: A string to search in the original asset name.</p>
<p><code>replace_by</code>: A string to replace the match in the asset name.</p>
<p>The asset will have a new attribute called <code>__original_name</code>.


<!-- tabs:end -->

### index_asset_filter  :id=kengine-assettype-index_asset_filter

[Kengine.AssetType.index_asset_filter](Kengine?id=kengine.assettype.index_asset_filter) <code>function</code>
<!-- tabs:start -->


##### **Description**

A function that returns <code>true</code> if the provided asset should be indexed, <code>false</code> otherwise.



| Param | Type | Description |
| --- | --- | --- |
| asset | [<code>Asset</code>](Kengine?id=kengine.asset) | <p>The asset to check before indexing.</p> |
| The | [<code>AssetType</code>](Kengine?id=kengine.assettype) | <p>main AssetType.</p> |

<!-- tabs:end -->

### assets  :id=kengine-assettype-assets

[Kengine.AssetType.assets](Kengine?id=kengine.assettype.assets) [<code>Collection</code>](Kengine?id=kengine.collection)
<!-- tabs:start -->


##### **Description**

The AssetType's collection.



##### **Example**

```gml
Kengine.asset_types[my_type.name].assets == my_type.assets // Return true
```
<!-- tabs:end -->

### GetAssetReplacement  :id=kengine-assettype-getassetreplacement

`Kengine.AssetType.GetAssetReplacement(id_or_name, [replacement_depth], [return_type])` ⇒ <code>Any</code>
<!-- tabs:start -->


##### **Description**

Returns an [Asset](Kengine?id=kengine.asset) by id or name. This function looks up the replacement chain of found asset, and iterates until it finds the final replacement of the asset and returns it.


**Returns**: <code>Any</code> - The wanted return type. Could be asset, its id or its index in the collection. <code>undefined</code> if not found.  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| id_or_name | <code>String</code> \| <code>Real</code> |  | <p>The real ID or name of the asset.</p> |
| [replacement_depth] | <code>Real</code> | <code>0</code> | <p>If the asset is marked as replaced, take the replacement.. and repeat that for replacement_depth<code>times. Use</code>0<code>to get last in the chain. Use</code>-1<code>to get the first in chain. Use</code>false` to not lookup replacements.</p> |
| [return_type] | <code>String</code> | <code>&quot;asset&quot;</code> | <p>What to return. &quot;asset&quot; (the asset itself), &quot;id&quot; (the asset id), or &quot;index&quot; (the index of the asset in the [Collection](Kengine?id=kengine.collection)). Defaults to &quot;asset&quot;</p> |


##### **Example**

```gml
my_asset1 = my_asset_type.GetAssetReplacement("spr_character01", 0, "index"); // Return the correct index of the asset in the asset collection.// Assuming [Mods](Mods)hanged spr_character02 sprite:my_asset2 = my_asset_type.GetAssetReplacement("spr_character02", 0, "index"); // Return the correct index of the asset (the newest one, if more than one, and with the latest YYAsset real ID) in the asset collection.
```
<!-- tabs:end -->

### IndexAssets  :id=kengine-assettype-indexassets

`Kengine.AssetType.IndexAssets([indexing_options])` ⇒ <code>Bool</code>
<!-- tabs:start -->


##### **Description**

The asset indexing functions (IndexAssets, IndexAsset) prepare and adds all the assets of this type, or only prepares and adds the provided [Asset](Kengine?id=kengine.asset) to the [Collection](Kengine?id=kengine.collection), returning whether operation was successful.


**Returns**: <code>Bool</code> - Whether successful indexing occured or not.  

| Param | Type |
| --- | --- |
| [indexing_options] | <code>Struct</code> | 

<!-- tabs:end -->

### IndexAsset  :id=kengine-assettype-indexasset

`Kengine.AssetType.IndexAsset(asset)` ⇒ <code>Array.&lt;Any&gt;</code>
<!-- tabs:start -->


##### **Description**

The asset indexing functions (IndexAssets, IndexAsset) prepare and adds all the assets of this type, or only prepares and adds the provided [Asset](Kengine?id=kengine.asset) to the [Collection](Kengine?id=kengine.collection), returning whether operation was successful.
The function surpasses <code>indexing_options.exclude_prefixes</code>.


**Returns**: <code>Array.&lt;Any&gt;</code> - A two-value array containing whether the asset was added or not, and the index of the asset or -1.  

| Param | Type | Description |
| --- | --- | --- |
| asset | [<code>Asset</code>](Kengine?id=kengine.asset) | <p>The asset to index.</p> |

<!-- tabs:end -->

### IndexingOptions  :id=kengine-assettype-indexingoptions

[Kengine.AssetType.IndexingOptions](Kengine?id=kengine.assettype.indexingoptions) <code>Struct</code>
<!-- tabs:start -->


##### **Description**

AssetType indexing options struct.


**Properties**

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| [index_range] | <code>Array.&lt;Real&gt;</code> | <code>[0,999999]</code> | <p>An array of min, max for the indexing range.</p> |
| [rename_rules] | <code>Array.&lt;Struct&gt;</code> |  | <p>An array of renaming rules when indexing assets.</p> |
| [exclude_prefixes] | <code>Array.&lt;String&gt;</code> | <code>[&quot;__&quot;,]</code> | <p>An array of prefixing strings that should be excluding when indexing at start.</p> |
| [unique_attrs] | <code>Array.&lt;(String\|Array.&lt;String&gt;)&gt;</code> | <code>[&quot;id&quot;,&quot;name&quot;,&quot;real_name&quot;,]</code> | <p>A list of attribute names that are unique by nature. So when indexing happens, it is only added once, otherwise replaced. Attributes such as <code>id</code> and <code>real_name</code> must be unique when adding assets. You can also use array of attrs inside to make them unique together.</p> |

<!-- tabs:end -->

## Collection  :id=kengine-collection

`Kengine.Collection([array], [defaultcmp])`
<!-- tabs:start -->


##### **Description**

A collection is a just an array with add, remove, get, and set functions.
When removing a value from the collection, the index of the value would be reused.



| Param | Type | Description |
| --- | --- | --- |
| [array] | <code>Array.&lt;Any&gt;</code> \| <code>Undefined</code> | <p>The initial array to use.</p> |
| [defaultcmp] | <code>function</code> \| <code>Undefined</code> | <p>A default cmp to be used in functions such as get_ind.</p> |

<!-- tabs:end -->

### GetAll  :id=kengine-collection-getall

`Kengine.Collection.GetAll()` ⇒ <code>Array.&lt;Any&gt;</code> \| <code>Any</code> \| <code>Undefined</code>
<!-- tabs:start -->


##### **Description**

Returns all values inside the collection.


<!-- tabs:end -->

### Get  :id=kengine-collection-get

`Kengine.Collection.Get(ind)` ⇒ <code>Any</code>
<!-- tabs:start -->


##### **Description**

Returns value searched by collection index.


**Returns**: <code>Any</code> - The value held in the collection index.  

| Param | Type | Description |
| --- | --- | --- |
| ind | <code>Real</code> | <p>The index of the value in the collection.</p> |

<!-- tabs:end -->

### GetInd  :id=kengine-collection-getind

`Kengine.Collection.GetInd(val, [cmp])` ⇒ <code>Real</code>
<!-- tabs:start -->


##### **Description**

Returns index of the value in the collection.


**Returns**: <code>Real</code> - The index of the value in the collection.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>Any</code> | <p>The value in the collection to be searched for its collection index.</p> |
| [cmp] | <code>function</code> | <p>A <code>Function</code> that takes <code>val</code>, <code>val2</code>, where <code>val2</code> is from the collection to compare <code>val</code> with. Return <code>true</code> to match. Defaults to initial <code>defaulcmp</code>.</p> |

<!-- tabs:end -->

### Exists  :id=kengine-collection-exists

`Kengine.Collection.Exists(val, [cmp])` ⇒ <code>Bool</code>
<!-- tabs:start -->


##### **Description**

Returns whether value is already in the collection.


**Returns**: <code>Bool</code> - Whether the value exists or not.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>Any</code> | <p>The value in the collection to be searched for.</p> |
| [cmp] | <code>function</code> | <p>A <code>Function</code> that takes <code>val</code>, <code>val2</code>, where <code>val2</code> is from the collection to compare <code>val</code> with. Return <code>true</code> to match. Defaults to initial <code>defaultcmp</code>.</p> |

<!-- tabs:end -->

### Add  :id=kengine-collection-add

`Kengine.Collection.Add(val)` ⇒ <code>Real</code>
<!-- tabs:start -->


##### **Description**

Adds the value to the collection.


**Returns**: <code>Real</code> - The collection index of the added value.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>Any</code> | <p>The value to be added to the collection.</p> |

<!-- tabs:end -->

### AddOnce  :id=kengine-collection-addonce

`Kengine.Collection.AddOnce(val, [cmp])` ⇒ <code>Real</code>
<!-- tabs:start -->


##### **Description**

Adds the value to the collection, only if it does not exist already.


**Returns**: <code>Real</code> - The collection index of the value whether added or found.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>Any</code> | <p>The value to be added to the collection only if it does not exist already.</p> |
| [cmp] | <code>function</code> | <p>A <code>Function</code> that takes <code>val</code>, <code>val2</code>, where <code>val2</code> is from the collection to compare <code>val</code> with. Return <code>true</code> to match. Defaults to initial <code>defaultcmp</code>.</p> |

<!-- tabs:end -->

### Remove  :id=kengine-collection-remove

`Kengine.Collection.Remove(val, [cmp])` ⇒ <code>Any</code>
<!-- tabs:start -->


##### **Description**

Removes the value from the collection.


**Returns**: <code>Any</code> - The removed value or undefined.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>Any</code> | <p>The value to be removed from the collection.</p> |
| [cmp] | <code>function</code> | <p>A <code>Function</code> that takes <code>val</code>, <code>val2</code>, where <code>val2</code> is from the collection to compare <code>val</code> with. Return <code>true</code> to match. Defaults to initial <code>defaultcmp</code>.</p> |

<!-- tabs:end -->

### RemoveInd  :id=kengine-collection-removeind

`Kengine.Collection.RemoveInd(ind)`
<!-- tabs:start -->


##### **Description**

Removes a looked-up value by the provided index from the collection.



| Param | Type | Description |
| --- | --- | --- |
| ind | <code>Real</code> | <p>The index which value is to be removed.</p> |

<!-- tabs:end -->

### Length  :id=kengine-collection-length

`Kengine.Collection.Length()` ⇒ <code>Real</code>
<!-- tabs:start -->


##### **Description**

Returns length of the values in the collection.


**Returns**: <code>Real</code> - The length of the values in the collection.  
<!-- tabs:end -->

### Filter  :id=kengine-collection-filter

`Kengine.Collection.Filter(func)` ⇒ <code>Array.&lt;Any&gt;</code>
<!-- tabs:start -->


##### **Description**

Returns a filtered array from the collection values.



| Param | Type | Description |
| --- | --- | --- |
| func | <code>function</code> | <p>A <code>Function</code> that takes <code>value</code>. Return <code>true</code> to take.</p> |

<!-- tabs:end -->

### FilterSelf  :id=kengine-collection-filterself

`Kengine.Collection.FilterSelf(func, [return_array])` ⇒ [<code>Collection</code>](Kengine?id=kengine.collection)
<!-- tabs:start -->


##### **Description**

Returns a filtered copy of self from the collection values.



| Param | Type | Default | Description |
| --- | --- | --- | --- |
| func | <code>function</code> |  | <p>A <code>Function</code> that takes <code>value</code>. Return <code>true</code> to take.</p> |
| [return_array] | <code>Bool</code> | <code>false</code> |  |

<!-- tabs:end -->

## Coroutine  :id=kengine-coroutine

`Kengine.Coroutine([name], [functions], [callback], [halt_callback])`
<!-- tabs:start -->


##### **Description**

.



| Param | Type |
| --- | --- |
| [name] | <code>String</code> | 
| [functions] | <code>Array.&lt;function()&gt;</code> | 
| [callback] | <code>function</code> | 
| [halt_callback] | <code>function</code> | 

<!-- tabs:end -->

## Instance  :id=kengine-instance

`Kengine.Instance([object], [asset])`
<!-- tabs:start -->


##### **Description**

A Kengine.Instance is basically a wrapper for created game real instances.
To make objects addable, this technique is required, which is to create a <code>Kengine.Instance</code> wrapper that wraps an object called <code>obj_ken_object</code> which in turn is just a placeholder with event codes.
You can also create an <code>Instance</code> to wrap any object you create in game. Which makes it seamlessly easier to manage.</p>
<p>The wrapped instance will get attributes such as <code>is_wrapped</code> and <code>wrapper</code>.
Note - It is recommended to use [Kengine.Utils.Instance.CreateLayer](Kengine.Utils.Instance?id=kengine.utils.instance.createlayer) and [Kengine.Utils.Instance.CreateDepth](Kengine.Utils.Instance?id=kengine.utils.instance.createdepth) functions whenever possible.


**See**

- [Kengine.Utils.Instance.CreateLayer](Kengine.Utils.Instance?id=kengine.utils.instance.createlayer)
- [Kengine.Utils.Instance.CreateDepth](Kengine.Utils.Instance?id=kengine.utils.instance.createdepth)


| Param | Type | Description |
| --- | --- | --- |
| [object] | <code>Id.Instance</code> \| <code>Undefined</code> | <p>The object to wrap.</p> |
| [asset] | [<code>Asset</code>](Kengine?id=kengine.asset) \| <code>String</code> \| <code>Undefined</code> | <p>The object asset. You can omit this.</p> |


##### **Example**

```gml
// This creates a `Kengine.Instance`, from the first [Asset](Asset)f the [AssetType](AssetType)bject which is `obj_default_object`, all while creating a room instance at 5,5 in the "Instances" layer.my_object = Kengine.Instance.Create(5, 5, "Instances");my_object = Kengine.Utils.Instance.CreateLayer(5, 5, "Instances")// This creates an Instance using depth instead of layermy_object = Kengine.Utils.Instance.CreateDepth(5, 5, -100, "obj_default_object")// This only creates a [Kengine.Instance](Kengine?id=kengine.instance)rapping an existing instance with id 10005my_object = new Kengine.Instance(10005, "my-awesome-object-asset"});
```
<!-- tabs:end -->

### instance  :id=kengine-instance-instance

[Kengine.Instance.instance](Kengine?id=kengine.instance.instance) <code>Id.Instance</code>
<!-- tabs:start -->


##### **Description**

The instance this wrapper is wrapping. <code>noone</code>, <code>obj_ken_object</code>, or a YYAsset object.


<!-- tabs:end -->

### asset  :id=kengine-instance-asset

[Kengine.Instance.asset](Kengine?id=kengine.instance.asset) [<code>Asset</code>](Kengine?id=kengine.asset)
<!-- tabs:start -->


##### **Description**

The asset provided to create this wrapper. Similar to <code>object_index</code>. Defaults to the object-type [Asset](Kengine?id=kengine.asset) that represents <code>obj_ken_object</code>.


<!-- tabs:end -->

### is_wrapper  :id=kengine-instance-is_wrapper

[Kengine.Instance.is_wrapper](Kengine?id=kengine.instance.is_wrapper) <code>Bool</code>
<!-- tabs:start -->


##### **Description**

Whether this is a wrapper or not, by default it is <code>true</code>.


**Default**: <code>true</code>  
<!-- tabs:end -->

### Create  :id=kengine-instance-create

`Kengine.Instance.Create([x], [y], [layer], [asset], [var_struct])` ⇒ [<code>Instance</code>](Kengine?id=kengine.instance)
<!-- tabs:start -->



| Param | Type | Default | Description |
| --- | --- | --- | --- |
| [x] | <code>Real</code> | <code>0</code> | <p>The X position.</p> |
| [y] | <code>Real</code> | <code>0</code> | <p>The Y position.</p> |
| [layer] | <code>String</code> | <code>KENGINE_DEFAULT_INSTANCES_LAYER</code> | <p>The layer name. Defaults to <code>[KENGINE_DEFAULT_INSTANCES_LAYER](KENGINE_DEFAULT_INSTANCES_LAYER)</code>.</p> |
| [asset] | [<code>Asset</code>](Kengine?id=kengine.asset) \| <code>Asset.GMObject</code> \| <code>String</code> |  | <p>The Kengine asset or object index to use. Defaults to <code>[KENGINE_WRAPPED_OBJECT](KENGINE_WRAPPED_OBJECT)</code>.</p> |
| [var_struct] | <code>Struct</code> |  | <p>The initial instance variables to provide the real instance with.</p> |

<!-- tabs:end -->

### Destroy  :id=kengine-instance-destroy

`Kengine.Instance.Destroy()`
<!-- tabs:start -->


##### **Description**

Destroy the real instance and remove this from the [instances](Kengine?id=kengine.instances) collection.


<!-- tabs:end -->

## Tilemap  :id=kengine-tilemap

`Kengine.Tilemap(tileset, tiledata)`
<!-- tabs:start -->


##### **Description**

A tilemap representation to replicate internal tilemaps behavior.



| Param | Type | Description |
| --- | --- | --- |
| tileset | [<code>Asset</code>](Kengine?id=kengine.asset) |  |
| tiledata | <code>Id.Buffer</code> \| <code>Array</code> | <p>A buffer of type s32 or array which has the indices of tiles.</p> |

<!-- tabs:end -->

### mask  :id=kengine-tilemap-mask

[Kengine.Tilemap.mask](Kengine?id=kengine.tilemap.mask) <code>Constant.TileMask</code> \| <code>Real</code>
<!-- tabs:start -->


<!-- tabs:end -->

### SetMask  :id=kengine-tilemap-setmask

`Kengine.Tilemap.SetMask(mask)`
<!-- tabs:start -->


##### **Description**

Sets the mask for the tilemap.



| Param | Type |
| --- | --- |
| mask | <code>Constant.TileMask</code> \| <code>Real</code> | 

<!-- tabs:end -->

## GetStatusArray  :id=kengine-getstatusarray

`Kengine.GetStatusArray(type)` ⇒ <code>Array.&lt;Any&gt;</code>
<!-- tabs:start -->


##### **Description**

Returns the current status of Kengine


**Returns**: <code>Array.&lt;Any&gt;</code> - pairs of (name, status)  

| Param | Type | Description |
| --- | --- | --- |
| type | <code>String</code> | <p>The <code>KENGINE_STATUS_TYPE</code> such as (MAIN, COROUTINES, EXTENSIONS)</p> |


##### **Example**

```gml
var statuses = Kengine.GetStatusArray(KENGINE_STATUS_TYPE.MAIN);var i = array_find_index(statuses, function(ele) { return ele[0] == "Kengine"; });if i > -1 {  var kengine_status = statuses[i][1];  if kengine_status == "NOT_STARTED" ...  if kengine_status == "STARTING" ...  if kengine_status == "READY" ...}
```
<!-- tabs:end -->

## new_uid  :id=kengine-new_uid

`Kengine.new_uid()`
<!-- tabs:start -->


##### **Description**

Returns a new UID. This is mostly used for assets.


<!-- tabs:end -->

## KengineAssetTypes  :id=kengine-kengineassettypes

`Kengine.KengineAssetTypes()` ⇒ <code>Struct</code> \| <code>Struct</code>
<!-- tabs:start -->


##### **Description**

Returns a struct of asset types definitions. This is used at the start of the game to configure asset types.


<!-- tabs:end -->

## Constants  :id=kengine-constants

[Kengine~Constants](Kengine-Constants) <code>object</code>
<!-- tabs:start -->


<!-- tabs:end -->

