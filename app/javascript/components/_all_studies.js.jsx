class AllStudies extends React.Component {
  
  constructor(props) {
    super(props);
    this.state = {
      studies: []
    };
  }
  componentDidMount(){
    fetch('/api/v1/fruits.json')
      .then((response) => {return response.json()})
      .then((data) => {this.setState({ fruits: data }) });
  }
  render(){
    return(
      <div>
        <h1>To do: List of fruits</h1>
      </div>
      )
    }
}