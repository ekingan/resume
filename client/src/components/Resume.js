import React, { Component } from 'react'
import {
  Query
} from 'react-apollo'
import {
  Segment,
  Dimmer,
  Loader,
  Container,
  Header,
  Grid,
  List,
  Button,
  Divider
} from 'semantic-ui-react'

import query from '../queries/getResume'
import ExperienceForm from './ExperienceForm';

class Resume extends Component {
  state = {open: false}

  format = (date) => {
    if (date) {
      const month = date.split("-")[1]
      const year = date.split("-")[0]
      return `${month}/${year}`
    }
  }

  handleForm = () => {
    this.setState({open: !this.state.open})
  }

  render() {
    const { id } = this.props.match.params
    return (
      <Query
        query={query}
        variables={{ id }}
      >
        {({ loading, error, data }) => {
          if (loading) return(
            <Segment>
              <Dimmer active>
                <Loader />
              </Dimmer>
            </Segment>
          )

          if (error) return <p>{error}</p>

          const { name, email, phone, summary, skills, experiences } = data.resume
          const workExperience = experiences.filter(experience => experience.experienceType === 'work')
          const education = experiences.filter(experience => experience.experienceType === 'education')
          
          return (
            <div style={{padding:'20px'}}>
            <Container>
              <Segment raised>
                <Header as='h2'>{name} - Full Stack Devloper</Header>
                <Header>{email} | {phone}</Header>
              </Segment>
              <Header>Professional Summary</Header>
              <Segment raised>
                {summary}
              </Segment>
              <Header>Skills</Header>
              <Segment raised>
                {skills} 
              </Segment>
              <Grid>
                <Grid.Column floated='left' width={8}>
                <Header>Experience</Header>
                </Grid.Column>
                <Grid.Column floated='right' width={2}>
                  <Button circular icon={this.state.open ? 'minus' : 'add'} onClick={this.handleForm} />
                </Grid.Column>
              </Grid>
                { this.state.open && <ExperienceForm /> }
              <List>
              {
                workExperience.map(({ id, title, name, description, startDate, endDate, location }) => (
                  <Segment raised key={id}>
                    <List.Item key={id}>
                      <List.Content>
                        <List.Header as='h3'>{title} | {name} </List.Header>
                      </List.Content>
                      <List.Content>
                        <List.Header as='h4'>
                          {location} | {this.format(startDate)} - {endDate ? this.format(endDate) : 'present'}
                        </List.Header>
                      </List.Content>
                      <Divider/>
                      <List.Content>
                        <List.Description>{description}</List.Description>
                      </List.Content>
                    </List.Item>
                  </Segment>
                ))
              }
              </List>
              <Header>Education</Header>
              <List>
              {
                education.map(({ id, title, name, description, startDate, endDate, location }) => (
                  <Segment raised key={id}>
                    <List.Item key={id}>
                      <List.Content>
                        <List.Header as='h3'>{title} | {name} </List.Header>
                      </List.Content>
                      <List.Content>
                        <List.Header as='h4'>
                          {location} | {endDate ? this.format(endDate) : 'present'}
                        </List.Header>
                      </List.Content>
                      <List.Content>
                      { description && <Divider/>}
                        <List.Description>{description}</List.Description>
                      </List.Content>
                    </List.Item>
                  </Segment>
                ))
              }
              </List>
            </Container>
            </div>
          );
        }}
      </Query>
    )
  }
}

export default Resume