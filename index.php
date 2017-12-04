<?php
    require_once('database.php');

    // Get category ID


    //***the commented lines below removed cause not needed in this example but maybe useful for next assignment one. 
    // Get name for current category
    //$query = "SELECT * FROM categories
    //          WHERE categoryID = $category_id";
    //$category = $db->query($query);
    //$category = $category->fetch();
    //$category_name = $category['categoryName'];

    // Get all categories
    //$query = 'SELECT * FROM categories
    //          ORDER BY categoryID';
    //$categories = $db->query($query);

    // Get customer for selected category
   // $query = "SELECT Subject, Day FROM fall order by Subject";
   // $customers = $db->query($query);
    $query = "SELECT Subject, Day FROM fall order by Subject";
    $fall = $db->query($query);
    
    $query = "SELECT Subject, Day FROM spring order by Subject";
    $spring = $db->query($query);
?>


<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>My Guitar Shop</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
</head>

<!-- the body section -->
<body>
    <div id="page">

    <div id="header">
        <h1>Class Schedule</h1>
    </div>

    <div id="main">

        <h1>Class List</h1>



        <div id="content">
            <!-- display a list of customers -->
            
                <form action="#" method="post">
                <select name="Semesters">
                <option value=""></option>
                <option value="Fall">Fall</option>
                <option value="Spring">Spring</option>
                </select>
                <input type="submit" name="submit" value="Get Selected Values" />
                </form>
                
            <?php
                if(isset($_POST['submit'])){
                $selected_val = $_POST['Semesters'];// Storing Selected Value In Variable
                
                
                if ($selected_val ===" "){
                    echo "Select Semester";  // Displaying Selected Value
                    $semester = array('');
                }
                elseif ($selected_val ==="Fall"){
                    $semester = $fall;
         
                }
                elseif($selected_val ==="Spring"){
                    $semester = $spring;

                }
            }
            ?>
     
            <table>
                <tr>
                    <th>CLass</th>
                    <th>Day</th>
                
                </tr>
                <?php foreach ($semester as $customer) : ?>
                    <tr>
                        <td><?php echo $customer['Subject']; ?></td>
                        <td><?php echo $customer['Day']; ?></td>
                        
                    </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>




    <div id="footer">
        <p>&copy; <?php echo date("Y"); ?> Daniel Namokoyi, Columbus State University.</p>
    </div>

    </div><!-- end page -->
</body>
</html>