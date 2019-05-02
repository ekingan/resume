Resume.create(
  name: 'Emily Kingan',
  email: 'ekingan@gmail.com',
  phone: '(503)-708-2028',
  summary: 'Focused and dependable full-stack engineer with 3 years of development experience, looking to work on a software
    product as a member of a supportive and collaborative agile team. Passionate about following best-practices and writing
    well-tested code. Excellent communicator with a positive attitude. Enthusiastic about learning new technologies.',
  skills: 'Ruby, Rails, Javascript, React, SQL, PostgreSQL,
    jQuery, Heroku, Cypress, RSPEC, REST, Python, Node, Go, AWS, GCP, Django,
    GraphQL, Redux, Docker, Backbone, MongoDB, Elixir'
)

resume_id = Resume.first.id

[
  {
    title: 'Full Stack Engineer',
    name: 'Marmoset Music',
    start_date: Date.new(2016, 11, 17),
    end_date: nil,
    location: 'Portland, Oregon',
    experience_type: 'work',
    description: 'Work as a member of an agile/scrum team, participating in 2-week sprints. 
    Develop and test an internal and public-facing application using Ruby on Rails, React, PostgreSQL, Heroku, and AWS.
    Monitor app performance and target areas for improvement.
    Wrote a complex music searching feature using raw SQL and query objects.
    Lead Rails upgrade efforts from Rails 3 to Rails 5.
    Integrated external accounting software with our application.
    Introduced Cypress.io as a testing tool and write integration tests for all critical user paths through the app.
    Introduced logging in all critical business logic areas.'
  }, 
  {
    title: 'Full Stack Engineer',
    name: 'GummiCube',
    start_date: Date.new(2018, 4, 23),
    end_date: Date.new(2018, 6, 8),
    location: 'San Jose, CA',
    experience_type: 'work',
    description: 'Using ES6, Node, React, and GraphQL, developed an A/B testing app for App Store offerings'
  },
  {
    title: 'Web Developer',
    name: 'Instrument',
    start_date: Date.new(2018, 1, 2),
    end_date: Date.new(2018, 4, 17),
    location: 'Portland, Oregon',
    experience_type: 'work',
    description: 'Developed and maintained software products for Google using Python, Django, and Go. 
    Communicated directly with clients, worked under tight deadlines to ensure project success'
  },
  {
    title: 'Web Developer Intern',
    name: 'The Program',
    start_date: Date.new(2016, 9, 2),
    end_date: Date.new(2016, 11, 17),
    location: 'Portland, Oregon',
    experience_type: 'work',
    description: 'Worked on a 3-month project for Nike, developing a mobile friendly, client-side application in React and Redux using
    Nike\'s API. Followed detailed design and technical specifications and managed tight deadlines.'
  },
  {
    title: 'Project Team Leader',
    name: 'The App Camp for Girls',
    start_date: Date.new(2016, 6, 1),
    end_date: Date.new(2016, 7, 15),
    location: 'Portland, Oregon',
    experience_type: 'work',
    description: 'Supported 4 young developers in completing three iOS applications as part of a one-week summer program'
  },
  {
    title: 'Entrepreneur, Tax Consultant, Enrolled Agent',
    name: 'Math LLC',
    start_date: Date.new(2006, 1, 1),
    end_date: nil,
    location: 'Portland, Oregon',
    experience_type: 'work',
    description: 'Founded and grew a small accounting firm from 0 to over 1000 clients.
    Lead and managed a team of 5 accountants.
    Built a web application using Ruby on Rails and React as a tool for managing clients, workload, and payments.
    Provide tax, consulting, and bookkeeping services to individuals and small businesses.
    Provide workshops, financial support, and free services to local non-profits, artists, and political organizations,
    including MESO, Mercy Corps, and the PSU Business Outreach Program'
  },
  {
    title: 'Web Development Immersive',
    name: 'General Assembly',
    start_date: nil,
    end_date: Date.new(2015, 12, 12),
    location: 'San Francisco, CA',
    experience_type: 'education',
    description: 'Completed a 12-week, full-time, boot camp program where I learned to develop web applications using Rub y on Rails,
    Angular, jQuery, Heroku, and Vanilla Javascript. Developed 4 full-stack applications both in teams of 4 and working solo.'
  },
  {
    title: 'BA in Mathematics',
    name: 'Reed College',
    start_date: nil,
    end_date: Date.new(1998, 6, 1),
    location: 'Portland, Oregon',
    experience_type: 'education'
  },
  {
    title: 'React/Redux 8-week course',
    name: 'Hack Oregon',
    start_date: nil,
    end_date: Date.new(2016, 5, 1),
    location: 'Portland, Oregon',
    experience_type: 'education'
  },
  {
    title: 'React Hooks Workshop',
    name: 'React Training',
    start_date: Date.new(2019, 4, 25),
    end_date: Date.new(2019, 4, 26),
    location: 'New York, NY',
    experience_type: 'education'
  }
].each do |ex| 
  Experience.create(
    title: ex[:title],
    name: ex[:name],
    start_date: ex[:start_date],
    end_date: ex[:end_date],
    location: ex[:location],
    experience_type: ex[:experience_type],
    description: ex[:description],
    resume_id: resume_id
  )
end