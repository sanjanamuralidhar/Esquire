// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Category> _$categorySerializer = new _$CategorySerializer();

class _$CategorySerializer implements StructuredSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];
  @override
  final String wireName = 'Category';

  @override
  Iterable<Object> serialize(Serializers serializers, Category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.mainCategory != null) {
      result
        ..add('mainCategory')
        ..add(serializers.serialize(object.mainCategory,
            specifiedType: const FullType(Category)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.subCategories != null) {
      result
        ..add('subCategories')
        ..add(serializers.serialize(object.subCategories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Category)])));
    }
    return result;
  }

  @override
  Category deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mainCategory':
          result.mainCategory.replace(serializers.deserialize(value,
              specifiedType: const FullType(Category)) as Category);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subCategories':
          result.subCategories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Category)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Category extends Category {
  @override
  final String description;
  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final Category mainCategory;
  @override
  final String name;
  @override
  final BuiltList<Category> subCategories;

  factory _$Category([void Function(CategoryBuilder) updates]) =>
      (new CategoryBuilder()..update(updates)).build();

  _$Category._(
      {this.description,
      this.id,
      this.imageUrl,
      this.mainCategory,
      this.name,
      this.subCategories})
      : super._();

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        description == other.description &&
        id == other.id &&
        imageUrl == other.imageUrl &&
        mainCategory == other.mainCategory &&
        name == other.name &&
        subCategories == other.subCategories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, description.hashCode), id.hashCode),
                    imageUrl.hashCode),
                mainCategory.hashCode),
            name.hashCode),
        subCategories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Category')
          ..add('description', description)
          ..add('id', id)
          ..add('imageUrl', imageUrl)
          ..add('mainCategory', mainCategory)
          ..add('name', name)
          ..add('subCategories', subCategories))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  CategoryBuilder _mainCategory;
  CategoryBuilder get mainCategory =>
      _$this._mainCategory ??= new CategoryBuilder();
  set mainCategory(CategoryBuilder mainCategory) =>
      _$this._mainCategory = mainCategory;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<Category> _subCategories;
  ListBuilder<Category> get subCategories =>
      _$this._subCategories ??= new ListBuilder<Category>();
  set subCategories(ListBuilder<Category> subCategories) =>
      _$this._subCategories = subCategories;

  CategoryBuilder();

  CategoryBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _imageUrl = _$v.imageUrl;
      _mainCategory = _$v.mainCategory?.toBuilder();
      _name = _$v.name;
      _subCategories = _$v.subCategories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Category build() {
    _$Category _$result;
    try {
      _$result = _$v ??
          new _$Category._(
              description: description,
              id: id,
              imageUrl: imageUrl,
              mainCategory: _mainCategory?.build(),
              name: name,
              subCategories: _subCategories?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'mainCategory';
        _mainCategory?.build();

        _$failedField = 'subCategories';
        _subCategories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Category', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
