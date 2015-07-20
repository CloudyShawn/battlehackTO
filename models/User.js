var User = sequelize.define('User', {
	name: {
		type: Sequelize.STRING,
		validate: {
			notEmpty: true
		} 
	}, 
	pass: Sequelize.STRING
});