const mongoose = require('mongoose');

// connect to mongo db by mongoose
mongoose
    .connect('mongodb://localhost:27017/bases2', {
        useNewUrlParser: true,
        useUnifiedTopology: true
    })
    .then(() => console.log('Connected to MongoDB'))
    .catch((err) => console.log('Failed to connect to MongoDB', err))

mongoose.connection.close()