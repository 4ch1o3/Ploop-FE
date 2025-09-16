// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routeRecommendationHash() =>
    r'253c4c85e490ca1395634b22b0c079ce8dce6f48';

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

/// See also [routeRecommendation].
@ProviderFor(routeRecommendation)
const routeRecommendationProvider = RouteRecommendationFamily();

/// See also [routeRecommendation].
class RouteRecommendationFamily extends Family<AsyncValue<Recommendation?>> {
  /// See also [routeRecommendation].
  const RouteRecommendationFamily();

  /// See also [routeRecommendation].
  RouteRecommendationProvider call(
    LatLng current,
  ) {
    return RouteRecommendationProvider(
      current,
    );
  }

  @override
  RouteRecommendationProvider getProviderOverride(
    covariant RouteRecommendationProvider provider,
  ) {
    return call(
      provider.current,
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
  String? get name => r'routeRecommendationProvider';
}

/// See also [routeRecommendation].
class RouteRecommendationProvider
    extends AutoDisposeFutureProvider<Recommendation?> {
  /// See also [routeRecommendation].
  RouteRecommendationProvider(
    LatLng current,
  ) : this._internal(
          (ref) => routeRecommendation(
            ref as RouteRecommendationRef,
            current,
          ),
          from: routeRecommendationProvider,
          name: r'routeRecommendationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$routeRecommendationHash,
          dependencies: RouteRecommendationFamily._dependencies,
          allTransitiveDependencies:
              RouteRecommendationFamily._allTransitiveDependencies,
          current: current,
        );

  RouteRecommendationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.current,
  }) : super.internal();

  final LatLng current;

  @override
  Override overrideWith(
    FutureOr<Recommendation?> Function(RouteRecommendationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RouteRecommendationProvider._internal(
        (ref) => create(ref as RouteRecommendationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        current: current,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Recommendation?> createElement() {
    return _RouteRecommendationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RouteRecommendationProvider && other.current == current;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, current.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RouteRecommendationRef on AutoDisposeFutureProviderRef<Recommendation?> {
  /// The parameter `current` of this provider.
  LatLng get current;
}

class _RouteRecommendationProviderElement
    extends AutoDisposeFutureProviderElement<Recommendation?>
    with RouteRecommendationRef {
  _RouteRecommendationProviderElement(super.provider);

  @override
  LatLng get current => (origin as RouteRecommendationProvider).current;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
