import React from 'react';
import {View, Text, Button,StyleSheet, TouchableOpacity, Image} from 'react-native';
export default class HomeScreen extends React.Component{
    
    render(){
        const {navigate} = this.props.navigation;
        return(
            <View style={{
                flex: 1,
                flexDirection: 'column',
                justifyContent: 'space-between',}}>
                <View style={[Styles.div]}>
                    <Text  style= {[Styles.textTieude]}>Đố vui giải trí </Text>
                    
                </View>
                <View style={[Styles.div]}>
                    <Image source={require('./../img/icon-welcom.png')} style={{width: 200, height: 200}}/>
                </View>
                <TouchableOpacity style={[Styles.div, {marginBottom: -40}]} onPress={() => navigate("Ranking")}>
                    <Text style={[Styles.btnBXH]}>Bảng Xếp Hạng</Text>
                </TouchableOpacity>

                <TouchableOpacity style={[Styles.div, {marginBottom: 20}]} onPress={() => navigate('Content', {name: "ahahi"})}>
                    <Text style={[Styles.btnPlay]}>Chơi luôn</Text>
                </TouchableOpacity>
                    
                {/* <Button title="ok" onPress={() => navigate('Content', {name: "ahahi"})} /> */}
            </View>
        )
    }
}

const Styles = StyleSheet.create({

    textTieude:{
      color: "blue", 
      fontSize: 30,
      fontWeight: 'bold',
      width: "100%",
      textAlign: "center",
      marginTop: 30,
      
    },
    div:{
        justifyContent: 'center',
        flexDirection: 'row',
    },
    btnBXH:{
        textAlign: "center", 
        backgroundColor: "#3399FF", 
        fontSize: 20, 
        padding: 5,
        
        width: "50%",
        borderRadius: 20,
        // borderBottomLeftRadius: 20,
        // borderBottomRightRadius: 20,
    },
    btnPlay:{
        textAlign: "center", 
        backgroundColor: "#3399FF", 
        fontSize: 20, 
        padding: 5,
        width: "30%",
        borderRadius: 20,

    },
  });