part of image_filters;

Map<Type, Future<FragmentProgram> Function()> _shaders = {
  MonochromeShaderConfiguration: () => monochromeFragmentProgram(),
  LookupTableShaderConfiguration: () => lookupFragmentProgram(),
  BrightnessShaderConfiguration: () => brightnessFragmentProgram(),
  ZoomBlurShaderConfiguration: () => zoomBlurFragmentProgram(),
  WhiteBalanceShaderConfiguration: () => whiteBalanceFragmentProgram(),
  VignetteShaderConfiguration: () => vignetteFragmentProgram(),
  VibranceShaderConfiguration: () => vibranceFragmentProgram(),
  ContrastShaderConfiguration: () => contrastFragmentProgram(),
  HueShaderConfiguration: () => hueFragmentProgram(),
  SwirlShaderConfiguration: () => swirlFragmentProgram(),
  SolarizeShaderConfiguration: () => solarizeFragmentProgram(),
  SaturationShaderConfiguration: () => saturationFragmentProgram(),
  RGBShaderConfiguration: () => rgbFragmentProgram(),
  PosterizeShaderConfiguration: () => posterizeFragmentProgram(),
  PixelationShaderConfiguration: () => pixelationFragmentProgram(),
  OpacityShaderConfiguration: () => opacityFragmentProgram(),
  LuminanceShaderConfiguration: () => luminanceFragmentProgram(),
  LuminanceThresholdShaderConfiguration: () => luminanceThresholdFragmentProgram(),
  KuwaharaShaderConfiguration: () => kuwaharaFragmentProgram(),
  HighlightShadowShaderConfiguration: () => highlightShadowFragmentProgram(),
  NoneShaderConfiguration: () => noneFragmentProgram(),
};

Map<String, ShaderConfiguration Function()> availableShaders = {
  'Monochrome': () => MonochromeShaderConfiguration(),
  'Lookup Table': () => LookupTableShaderConfiguration(),
  'Brightness': () => BrightnessShaderConfiguration(),
  'Zoom Blur': () => ZoomBlurShaderConfiguration(),
  'White Balance': () => WhiteBalanceShaderConfiguration(),
  'Vignette': () => VignetteShaderConfiguration(),
  'Vibrance': () => VibranceShaderConfiguration(),
  'Contrast': () => ContrastShaderConfiguration(),
  'Hue': () => HueShaderConfiguration(),
  'Swirl': () => SwirlShaderConfiguration(),
  'Solarize': () => SolarizeShaderConfiguration(),
  'Saturation': () => SaturationShaderConfiguration(),
  'RGB': () => RGBShaderConfiguration(),
  'Posterize': () => PosterizeShaderConfiguration(),
  'Pixelation': () => PixelationShaderConfiguration(),
  'Opacity': () => OpacityShaderConfiguration(),
  'Luminance': () => LuminanceShaderConfiguration(),
  'Luminance Threshold': () => LuminanceThresholdShaderConfiguration(),
  'Kuwahara': () => KuwaharaShaderConfiguration(),
  'Highlight Shadow': () => HighlightShadowShaderConfiguration(),
};
