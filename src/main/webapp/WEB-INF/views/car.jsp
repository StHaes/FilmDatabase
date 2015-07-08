<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>Car</title>
        <style type="text/css">
            .licensePlate {
                border: 0.15rem solid firebrick;
                color: firebrick;
                padding: 0.1rem 0.2rem;
                font-family: sans-serif;
                font-weight: bold;
                border-radius: 0.2rem;
                margin: 0.2rem;
            }
        </style>
    </head>
    <body>
        <h1>${car.model.brand.name} ${car.model.name}</h1>
        <span class="licensePlate">${car.licensePlate}</span>
    </body>
</html>
