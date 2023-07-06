void main() {
  Storage localStorage = LocalStorage();
  localStorage.save('Hello, local storage!');
  String localData = localStorage.retrieve();
  print('Retrieved data: $localData');

  Storage cloudStorage = CloudStorage();
  cloudStorage.save('Hello, cloud storage!');
  String cloudData = cloudStorage.retrieve();
  print('Retrieved data: $cloudData');
}
abstract class Storage {
  void save(String data);
  String retrieve();
}

class LocalStorage extends Storage {
  @override
  void save(String data) {
    print('Saving data locally: $data');
  }
  @override
  String retrieve() {
    print('Retrieving data from local storage');
    return 'Local data';
  }
}
class CloudStorage extends Storage {
  @override
  void save(String data) {
    print('Saving data to the cloud: $data');
  }
  @override
  String retrieve() {
    print('Retrieving data from the cloud');
    return 'Cloud data';
  }
}