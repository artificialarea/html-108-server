BEGIN;

TRUNCATE
    users,
    compositions
    RESTART IDENTITY CASCADE;

INSERT INTO users (username, email, password)
VALUES
    ('dorfmeister', 'dorf@aol.com', 'aaAA11!!'),
    ('ritchie hawtin', null, 'aaAA11!!'),
    ('satchmo', 'satchmo808@gmail.com', 'aaAA11!!');

INSERT INTO compositions (
    user_id,
    title, 
    public, 
    tempo, 
    sequence_length,
    mp3,
    step_sequence)
    VALUES
        (1, 'Silencio', false, 120, 16, null,  
        '{
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
        }'      
        ),
        (1, 'So Full It Hurts', true, 120, 16, null,
        '{
            {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
            {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
            {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
            {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
        }'
        ),
        (1, 'Krautrock', true, 80, 16, null, 
        '{
            {1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
            {1,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
            {0,1,0,1,0,0,0,0,1,0,1,0,0,0,0,0}
        }'
        ),
        (2, 'Browser Noise', true, 80, 16, null, 
        '{
            {1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0},
            {1,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
            {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
        }'
        ),
        (3, 'Untitled', true, 220, 16, null,
        '{ 
            {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
            {1,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1},
            {1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0}
        }'
        );

COMMIT;