import React, { Component } from 'react';
import {
  Form,
  Input
} from 'semantic-ui-react'
import { Mutation } from 'react-apollo'
import addExperience from '../mutations/addExperience'
import query from '../queries/getResume'

const initialState = {
  title: '',
  name: '', 
  location: '',
  start_date: '',
  end_date: '',
  description: '',
  resume_id: 1,
  experience_type: 'work'
}

class ExperienceForm extends Component {
  state = initialState

  handleChange = ({ target: { value, name } }) => this.setState({ [name]: value })

  handleSubmit = (addExperience) => {
    const { 
      resume_id,
      title,
      name, 
      location,
      start_date,
      end_date,
      description,
      experience_type
    } = this.state

    addExperience(
      { variables: 
        { title,
          name, 
          location,
          start_date,
          end_date,
          description,
          resume_id,
          experience_type
        }, 
        refetchQueries: [{ query, variables: { id: resume_id } }]
      }
    )

    this.setState(initialState)
  }

  render() {
    const { 
      title,
      name, 
      location,
      start_date,
      end_date,
      description
    } = this.state

    return (
      <Mutation mutation={addExperience}>
        {(addExperience, { data }) => (
          <Form onSubmit={() => this.handleSubmit(addExperience)}>
            <Form.Field
              label='Job Title*'
              placeholder='Title'
              name='title'
              onChange={this.handleChange}
              value={title}
              control={Input}
            />

            <Form.Field
              label='Employer Name*'
              placeholder='Name'
              name='name'
              onChange={this.handleChange}
              value={name}
              control={Input}
            />

            <Form.Field
              label='Location*'
              placeholder='Location'
              name='location'
              onChange={this.handleChange}
              value={location}
              control={Input}
            />

            <Form.Field
              label='Start Date'
              placeholder='Start Date'
              name='start_date'
              onChange={this.handleChange}
              value={start_date}
              control={Input}
            />

            <Form.Field
              label='End Date'
              placeholder='End Date'
              name='end_date'
              onChange={this.handleChange}
              value={end_date}
              control={Input}
            /> 

            <Form.Field
              label='Description'
              placeholder='Description'
              name='description'
              onChange={this.handleChange}
              value={description}
              control={Input}
            />

            <Form.Button>Submit</Form.Button>
          </Form>
        )}
      </Mutation>
    )
  }
}

export default ExperienceForm;