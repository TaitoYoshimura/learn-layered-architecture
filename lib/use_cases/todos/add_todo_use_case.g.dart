// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_todo_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addTodoUseCaseHash() => r'e554fd26a065b04e4fca0647dff4d236b966885a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [addTodoUseCase].
@ProviderFor(addTodoUseCase)
const addTodoUseCaseProvider = AddTodoUseCaseFamily();

/// See also [addTodoUseCase].
class AddTodoUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [addTodoUseCase].
  const AddTodoUseCaseFamily();

  /// See also [addTodoUseCase].
  AddTodoUseCaseProvider call(
    String content,
  ) {
    return AddTodoUseCaseProvider(
      content,
    );
  }

  @override
  AddTodoUseCaseProvider getProviderOverride(
    covariant AddTodoUseCaseProvider provider,
  ) {
    return call(
      provider.content,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addTodoUseCaseProvider';
}

/// See also [addTodoUseCase].
class AddTodoUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [addTodoUseCase].
  AddTodoUseCaseProvider(
    String content,
  ) : this._internal(
          (ref) => addTodoUseCase(
            ref as AddTodoUseCaseRef,
            content,
          ),
          from: addTodoUseCaseProvider,
          name: r'addTodoUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addTodoUseCaseHash,
          dependencies: AddTodoUseCaseFamily._dependencies,
          allTransitiveDependencies:
              AddTodoUseCaseFamily._allTransitiveDependencies,
          content: content,
        );

  AddTodoUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.content,
  }) : super.internal();

  final String content;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddTodoUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddTodoUseCaseProvider._internal(
        (ref) => create(ref as AddTodoUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        content: content,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddTodoUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddTodoUseCaseProvider && other.content == content;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, content.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddTodoUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `content` of this provider.
  String get content;
}

class _AddTodoUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with AddTodoUseCaseRef {
  _AddTodoUseCaseProviderElement(super.provider);

  @override
  String get content => (origin as AddTodoUseCaseProvider).content;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
