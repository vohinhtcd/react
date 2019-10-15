import React from 'react';
import {View, Text, Button,ActivityIndicator, StyleSheet, Image, ImageBackground, Input, TextInput} from 'react-native';
export default class ContentScreen extends React.Component{
  
    constructor(props){
        super(props);
        
        this.state={
        isLoading: true,
        dataSource : [],
        widthTrue: 0,
        widthFalse:0,
        position : 0,
        name : "",
        countGhidanh : 0,
        
    }
    
      }
      componentDidMount(){
        return fetch('http://192.168.5.2:8080/api-androi/list-cauhoi.php')
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
      _Choose(text){
        if(this.state.dataSource[this.state.position]['dapan_dung']==text){
          this.setState({
            widthTrue: "100%"
          })
        }

        else {
          this.setState({
            widthFalse: "100%"
          })
        }
        
      }
      _Choitiep = () => {
        return this.setState({
          // isLoading: false,
          position : this.state.position + 1 ,
          widthTrue: 0,
        })
      }
      _Ghidanh(){
        if(this.state.countGhidanh>0){
          return alert("Bạn đã ghi danh rồi.");
        }
        if(this.state.name==""){
          return alert("Không nên để trống tên bạn ơi!");
        }
        
        fetch('http://192.168.5.2:8080/api-androi/insert-scores.php',{
          method: 'POST',
          headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            name : this.state.name,
            scores: this.state.position*5,
          }),
        });
        this.setState({
          countGhidanh: this.state.countGhidanh+1,
        })
        alert('thanh cong');
        
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
          // phan thong bao
          <ImageBackground style={{width: "100%", height: "100%"}} source={require('./../img/bg1.png')}>
            <View style={{width: this.state.widthTrue, height: this.state.widthTrue,justifyContent: 'space-between', flexDirection: "column"}}>
              <Text style={[Styles.alertTitle,{backgroundColor: "green"}]}>Chúc mừng!</Text>
              <Text style={{padding: 20}}>Bạn là người thông minh nhất trái đất này.
                Hãy tiếp tục đúng đắn như vậy nhaaa.
              </Text>
              <View style={[Styles.div]}>
                <Image source={require('./../img/icon-chucmung.png')} style={{height: 200, width: 250}} />
              </View>
              <Button title="Chơi Tiếp" onPress={this._Choitiep} />
            </View>

            <View style={{width: this.state.widthFalse, height: this.state.widthFalse,justifyContent: 'space-between', flexDirection: "column"}}>
              <Text style={[Styles.alertTitle, {backgroundColor: "yellow"}]}>Chia buồn!</Text>
              <Text style={{padding: 20}}>Rất tiếc, bạn chưa may mắn trong câu hỏi này.
                Chúc bạn may mắn lần sauuu!
              </Text>
              <View style={[Styles.div]}>
                <Image source={require('./../img/icon-buon.png')} style={{height: 200, width: 200}} />
              </View>
              <View style={[Styles.div]}>
                <TextInput onChangeText={value => this.setState({name: value})} placeholder="Nhập tên bạn nếu muốn đua top với thế giới" value={this.state.name} />
                <Button onPress={() =>this._Ghidanh()} title="Ghi Danh" />
              </View>
              <Button title="Kết thúc"  onPress={() => navigate('Home')}/>
            </View>
            {/* phaan giao dien cau hoi */}
            <View style={{
            flex: 1,
            flexDirection: 'column',
            justifyContent: 'space-between',}}>
              <View>
                <TextInput onChange={this._Choitiep}/>
              </View>
              <View>
                <Text style={[Styles.tQuestContent, Styles.cachle]}>{this.state.dataSource[this.state.position]['noidung']}</Text>
              </View>
              <View style={[Styles.divNote, Styles.cachle]}>
                <Image style={{width: 50, height: 50}} source={require('./../img/icon1.png')} />
                <View>
                  <Text>Câu: {this.state.position+1} /20</Text>
                  <Text>Điểm số: {this.state.position*5}</Text>
                </View>
              </View>
              <View style={{marginBottom: 30}}>
                <View style={[Styles.div, Styles.cachle]}>
                   {/* neu dap an dung thi hien thong bao dung, sai thi hien thong bao sai */}
                  <Text title="a" onPress={()=>this._Choose(this.state.dataSource[this.state.position]['a'])}
                     style={[Styles.textAnswer,{marginRight: 5}]}>{this.state.dataSource[this.state.position]['a']}</Text>
                  <Text title="a" onPress={()=>this._Choose(this.state.dataSource[this.state.position]['b'])}
                   style={[Styles.textAnswer,{marginLeft: 5}]}>{this.state.dataSource[this.state.position]['b']}</Text>
                </View>
                <View style={[Styles.div, Styles.cachle]}>
                  <Text title="a" onPress={()=>this._Choose(this.state.dataSource[this.state.position]['c'])}
                   style={[Styles.textAnswer,{marginRight: 5}]}>{this.state.dataSource[this.state.position]['c']}</Text>
                  <Text title="a" onPress={()=>this._Choose(this.state.dataSource[this.state.position]['d'])}
                   style={[Styles.textAnswer,{marginLeft: 5}]}>{this.state.dataSource[this.state.position]['d']}</Text>
                </View>
              </View>
          </View>
          
          </ImageBackground>
          
        )
    }
}

const Styles = StyleSheet.create({
  div:{
      justifyContent: 'center',
      flexDirection: 'row',
  },
  icon:{
    width: 30,
    height: 30,
  },
  tQuestContent:{
    fontSize: 20,
    borderRadius: 25,
    backgroundColor: 'yellow',
    paddingLeft: 30,
    paddingRight: 30,
    textAlign: "center",
    
  },
  divNote:{
    flexDirection: 'row',
    justifyContent: "space-between",
    
  },
  cachle:{
    paddingTop: 10,
    paddingBottom: 10,
    marginLeft: 10,
    marginRight: 10,
  },
  textAnswer:{
    flex: 1,
    textAlign: "center",
    backgroundColor: "white",
    padding: 10,
    height: 60,
    
  },
  alertTitle:{
    fontSize: 20,
    fontWeight: "bold",
    textAlign: "center",
    // marginTop: 20,
    paddingTop: 10,
    paddingBottom: 10,
    
  }
});