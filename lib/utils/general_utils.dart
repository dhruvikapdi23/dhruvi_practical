

/// Capitalize given String
String capitalizeFirstLetter(val) {

  return (val != null)
      ? (val![0].toString().toUpperCase() + val!.substring(1))
      : validate(value: val);
}


// Check null string, return given value if null
String validate({String? value}) {

  if (isEmptyOrNull(value)) {
    return value!;
  } else {
    return value!;
  }
}


/// Returns true if given String is null or isEmpty
bool  isEmptyOrNull(val) =>
    val == null ||
        (val != null && val!.isEmpty) ||
        (val != null && val! == 'null');