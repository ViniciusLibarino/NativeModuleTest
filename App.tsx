import React from 'react';
import {Button, NativeModules, StyleSheet, Text, View} from 'react-native';

const App = () => {
  const {ExampleModule} = NativeModules;

  return (
    <View style={styles.container}>
      <Text>Native module app!</Text>
      <Button
        title="Click me for printMessage"
        onPress={() => ExampleModule.printMessage('Vinicius', 23)}
      />
      <Button
        title="Click me for returnMessage"
        onPress={() => {
          ExampleModule.returnMessage('My teste')
            .then((result: string) => {
              console.log(result);
            })
            .catch((error: string) => {
              console.log(error);
            });
        }}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});

export {App};
