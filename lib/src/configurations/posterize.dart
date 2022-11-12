part of image_filters;

class PosterizeShaderConfiguration extends ShaderConfiguration {
  final NumberParameter _colorLevels;

  PosterizeShaderConfiguration()
      : _colorLevels = _IntSliderParameter(
          'inputColorLevels',
          'colorLevels',
          0,
          10.0,
          min: 1.0,
          max: 256.0,
        ),
        super([10.0]);

  set colorLevels(double value) {
    _colorLevels.value = value;
    _colorLevels.update(this);
  }

  @override
  List<ShaderParameter> get parameters => [_colorLevels];
}

class _IntSliderParameter extends SliderNumberParameter {
  _IntSliderParameter(
      super.shaderName,
      super.displayName,
      super.offset,
      super.value, {
        super.min,
        super.max,
      });

  @override
  void update(ShaderConfiguration configuration) {
    configuration._floats[_offset] = value.toInt().toDouble();
  }
}
