import React from "react"
import PropTypes from "prop-types"
class GreetUser extends React.Component {
  render () {
    return (
      <React.Fragment>
        Hello, {this.props.name} 
        LastName : {this.props.lastName} 
        This is react + rails!
      </React.Fragment>
    );
  }
}

GreetUser.propTypes = {
  name: PropTypes.string,
  lastName: PropTypes.string
};
export default GreetUser
