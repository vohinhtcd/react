import React from 'react';
import {View, Text, Button,StyleSheet, TouchableOpacity, Image,FlatList,ActivityIndicator} from 'react-native';
export default class RankingScreen extends React.Component{
    constructor(props){
        super(props);
        
        this.state={
            dataSource: [],
            isLoading: true,
        }
    }
    componentDidMount(){
        return fetch('http://192.168.5.2:8080/api-androi/list-diem.php')
          .then((response) => response.json())
          .then((responseJson) => {
    
            this.setState({
              isLoading: false,
              dataSource: responseJson,
            }, function(){
    
            });
    
          })
          .catch((error) =>{
            console.error(error);
          });
      }
    render(){
        const {navigate} = this.props.navigation;
        if(this.state.isLoading){
            return(
              <View style={{flex: 1, padding: 20}}>
                <ActivityIndicator/>
              </View>
            )
          }
        return(
            <View style={{
                flex: 1,
                flexDirection: 'column',
                justifyContent: 'space-between',}}>
                <View style={[Styles.div]}>
                    <Text  style= {[Styles.textTieude]}>Bảng xếp hạng cao thủ</Text>
                    
                </View>
                <View style={{flexDirection: 'row',marginTop: 20}}>
                  <Text style={[Styles.itemName, {fontWeight: 'bold'}]}>Tên</Text>
                  <Text style={[Styles.itemScores, {fontWeight: 'bold'}]}>Điểm</Text>
                </View>
                <FlatList
                data={this.state.dataSource} renderItem={({item}) => (
                    <View style={[Styles.div,Styles.divItem]}>
                      <Text style={[Styles.itemName]}>{item.name}</Text>
                      <Text style={[Styles.itemScores]} >{item.scores}</Text>
                    </View>
                  )}
          keyExtractor={({id}, index) => id}
        />
                <TouchableOpacity style={{}} onPress={() => navigate('Home')}>
                    <Text style={{textAlign: "center", backgroundColor: "blue", fontSize: 20, padding: 5,}}>Trở Về</Text>
                </TouchableOpacity>
                    

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
    divItem:{
      // borderColor: "black",
      // borderWidth: 1,
      marginTop: 5,
      
    },
    itemName:{
      width: "70%",
      paddingLeft: 30,
      backgroundColor: "#00dd00",
      paddingTop: 2,
      paddingBottom: 2,
    },
    itemScores:{
      width: "30%",
      paddingLeft: 10,
      backgroundColor: "#00ff00",
      textAlign: 'center',
      paddingTop: 2,
      paddingBottom: 2,
    }
  });