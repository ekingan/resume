import gql from 'graphql-tag'

export default gql`
  query getResume($id: ID!) {
    resume(id: $id) {
      id
      name
      email
      phone
      summary
      skills
      experiences {
        id
        title
        name
        location
        startDate
        endDate
        description
        experienceType
      }
    }
  }
`