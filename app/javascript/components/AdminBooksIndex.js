import React from "react";
import PropTypes from "prop-types";
import ReactTable from "react-table";
import "react-table/react-table.css";

class AdminBooksIndex extends React.Component {
  render() {
    console.log("wat");
    return (
      <div>
        <ReactTable
          data={this.props.books}
          columns={[
            {
              Header: "Title",
              accessor: "title"
            }
          ]}
        />
      </div>
    );
  }
}

export default AdminBooksIndex;
