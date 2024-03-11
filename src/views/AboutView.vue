<template>
  <div class="about">
    <div class="container">
      <div class="content">
        <div class="text">
          <h1>I am Lance Lee</h1>
          <h2>An Experienced Full-Stack Software Engineer</h2>
          <p>
            Strong focus on backend development. Proficient in Python, Django, Flask, JavaScript, and working with microservices architecture on Kubernetes.
          </p>
          <h3>Key Achievements</h3>
          <ul>
            <li>Developed and maintained robust, scalable microservices using gRPC and Kubernetes</li>
            <li>Optimized and automated backend workflows, including database migrations</li>
            <li>Collaborated cross-functionally to implement features, resolve issues, and drive product improvements</li>
            <li>Designed and built RESTful APIs to support frontend functionality</li>
            <li>Wrote comprehensive unit and integration tests to ensure code quality and reliability</li>
          </ul>
          <p>
            Passionate about crafting efficient, secure, and high-performance backend systems. Constantly seeking opportunities to learn and grow as an engineer.
          </p>
        </div>
        <div class="profile-picture-container">
          <div class="profile-picture">
            <img src="@/assets/profile.jpg" alt="Profile Picture">
          </div>
          <div class="linkedin-link">
            <a href="https://www.linkedin.com/in/lancele3/" target="_blank">LinkedIn Profile</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.about {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
}

.container {
  max-width: 1200px;
  width: 100%;
  padding: 0 20px;
}

.content {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.text {
  flex: 1;
  margin-right: 2rem;
}

h1 {
  font-size: 2.5rem;
  font-weight: bold;
  margin-bottom: 1rem;
}

h2 {
  font-size: 1.8rem;
  font-weight: bold;
  margin-top: 2rem;
  margin-bottom: 1rem;
}

p {
  font-size: 1.2rem;
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

ul {
  list-style-type: disc;
  margin-left: 2rem;
  margin-bottom: 1.5rem;
}

li {
  font-size: 1.2rem;
  line-height: 1.6;
  margin-bottom: 0.5rem;
}

a {
  color: #007bff;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

.profile-picture-container {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.profile-picture {
  width: 300px;
  height: 300px;
  border-radius: 50%;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
  margin-bottom: 1rem;
}

.profile-picture img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.linkedin-link {
  text-align: center;
}

@media (max-width: 768px) {
  .content {
    flex-direction: column;
    align-items: flex-start;
  }

  .text {
    margin-right: 0;
    margin-bottom: 2rem;
  }

  .profile-picture {
    width: 200px;
    height: 200px;
  }
}
</style>