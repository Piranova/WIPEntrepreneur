import React from "react"
import PropTypes from "prop-types"
class GreetUser extends React.Component {
  render () {
    return (
      <React.Fragment>
        Hello, {this.props.name} <br/>
        This is react + rails!
      </React.Fragment>
    );
  }
}

GreetUser.propTypes = {
  name: PropTypes.string
};
export default GreetUser
