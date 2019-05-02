
import gql from "graphql-tag"

export default gql`
mutation createExperience($resume_id: ID!, $title:String!, $name:String!, $location:String!, $experience_type:String!, $start_date:String, $end_date:String, $description:String){
  createExperience(resumeId:$resume_id, title: $title, name:$name, location:$location, experienceType: $experience_type startDate: $start_date, endDate: $end_date, description:$description) {
    experience {
      id
      title
      name
      location
      startDate
      endDate
      description
    }
  }
}
`