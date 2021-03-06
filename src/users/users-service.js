const UsersService = {

    getAllUsers(knex) {
      return knex
        .from('users')
        .select(
            'users.id',
            'users.username',
        )
    },
  
    insertUser(knex, newUser) {
      return knex
        .insert(newUser)
        .into('users')
        .returning('*')
        .then(rows => {
          return rows[0]
        })
    },
  
    getUserById(knex, id) {
      return knex
        .from('users')
        .select('*')
        .where('id', id)
        .first()
    },
  
    deleteUser(knex, id) {
      return knex('users')
        .where({ id })
        .delete()
    },
  
    updateUser(knex, id, newUserFields) {
      return knex('users')
        .where({ id })
        .update(newUserFields)
    },
  };
  
  module.exports = UsersService;