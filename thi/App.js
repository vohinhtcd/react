import {createAppContainer} from 'react-navigation';
import {createStackNavigator} from 'react-navigation-stack';


import HomeScreen from './src/screen/Home';
import ContentScreen from './src/screen/Content';
import RankingScreen from './src/screen/Ranking';

const AppNavigation = createStackNavigator({
  Home: HomeScreen,
  Content: ContentScreen,
  Ranking: RankingScreen,
});

export default createAppContainer(AppNavigation);
