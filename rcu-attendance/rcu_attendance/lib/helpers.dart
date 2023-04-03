
bool stringToBool(String data){
  if (data.toLowerCase() == "true" || data.toLowerCase() == "1") {
    return true;
  }
  return false;
}