import axios from 'axios';

const baseUrl = 'http://localhost:3000'
// const baseUrl = 'https://shoe-list.herokuapp.com/'

const api = axios.create({
  baseURL: baseUrl
})

export const loginUser = async (loginData) => {
  const resp = await api.post('/auth/login', loginData)
  localStorage.setItem('authToken', resp.data.token);
  api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`
  return resp.data.user
}

export const registerUser = async (registerData) => {
  const resp = await api.post('/users/', { user: registerData })
  localStorage.setItem('authToken', resp.data.token);
  api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`
  return resp.data.user
}

export const verifyUser = async () => {
  const token = localStorage.getItem('authToken');
  if (token) {
    api.defaults.headers.common.authorization = `Bearer ${token}`
    const resp = await api.get('/auth/verify');
    return resp.data
  }
  return false
}

export const createShoe = async (data, genreId) => {
  const resp = await api.post(`/genres/${genreId}/shoes`, { shoe: data })
  return resp.data
}
export const readAllShoes = async (genreId) => {
  console.log("test", genreId)
  const resp = await api.get(`/shoes`)
  return resp.data
}
export const shoesByGenre = async (id) => {
  const resp = await api.get(`/genres/${id}/shoes`)
  return resp.data
}
export const updateShoe = async (id, data) => {
  const resp = await api.put(`/shoes/${id}`, data)
  return resp.data
}
export const destroyShoe = async (id) => {
  const resp = await api.delete(`/shoes/${id}`)
  return resp.data
}

export const readAllGenres = async () => {
  const resp = await api.get('/genres')
  return resp.data
}