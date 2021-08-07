//  Import flutter packages.
import 'package:flutter/painting.dart';

/// [appBarHeightScaleFactor] defines a simple scale factor to apply to
/// appBar when calculating bottomNavigationBar in BasePage.
const double appBarHeightScaleFactor = 1.0;

/// [automaticallyImplyLeading] toggles whether the 'leading back arrow' widget
/// associated with BasePage is used.
/// Set 'true' only for development. Note that if set to true the
/// 'leading back arrow' may still not be displayed if no page is available.
const bool automaticallyImplyLeading = false;

/// [buttonAlignment] defines the anchor point for FAB placement in BasePage.
const buttonAlignment = Alignment.bottomRight;

/// [buttonPaddingDown] defines the padding for downward direction
/// button positioning associated with BasePage.
const EdgeInsetsDirectional buttonPaddingDown = EdgeInsetsDirectional.fromSTEB(
    buttonPaddingCrossAxis,
    buttonPaddingMainAxis,
    buttonPaddingCrossAxis,
    buttonPaddingMainAxisExtra);

/// [buttonPaddingCrossAxis] defines the cross axis padding between buttons
/// associated with BasePage.
const double buttonPaddingCrossAxis = 15;

/// [buttonPaddingMainAxis] defines the main axis padding between buttons
/// associated with BasePage.
const double buttonPaddingMainAxis = 15.0;

/// [buttonPaddingMainAxisExtra] defines extra padding in the main axis
/// direction between buttons associated with BasePage.
const double buttonPaddingMainAxisExtra = 10.0;

/// [buttonPaddingUp] defines the padding for downward direction
/// button positioning associated with BasePage.
const EdgeInsetsDirectional buttonPaddingUp = EdgeInsetsDirectional.fromSTEB(
    buttonPaddingCrossAxis,
    buttonPaddingMainAxisExtra,
    buttonPaddingCrossAxis,
    buttonPaddingMainAxis);
