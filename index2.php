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
   // $query = "SELECT Subject, Day FROM fall order by Subject";
  //  $fall = $db->query($query);
    
  //  $query = "SELECT Subject, Day FROM spring order by Subject";
  //  $spring = $db->query($query);
    
    $query = "SELECT * FROM fall WHERE Subject='Computer Organization'";
    $compOrg = $db->query($query);
    
    $query = "SELECT * FROM fall WHERE Subject='Computer Science I'";
    $compScie = $db->query($query);
    
    $query = "SELECT * FROM fall WHERE Subject='Internet Programming'";
    $intProg = $db->query($query);


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
                <option value="compOrg">Computer Organization </option>
                <option value="compScie">Computer Science 1</option>
                <option value="intProg">Internet Programming</option>
                </select>
                <input type="submit" name="submit" value="Submit" />
                </form>
                
            <?php
                if(isset($_POST['submit'])){
                $selected_val = $_POST['Semesters'];// Storing Selected Value In Variable
                
                
                if ($selected_val ===" "){
                    echo "Select Semester";  // Displaying Selected Value
                    $semester = array(' ,');
                }
                elseif ($selected_val ==="compOrg"){
                    $semester = $compOrg;
         
                }
                
                elseif ($selected_val ==="compScie"){
                    $semester = $compScie;
         
                }
                
                elseif ($selected_val ==="intProg"){
                    $semester = $intProg;
         
                }
                
                else{
                    $semester = "";
                }
            }
            ?>
     
            <table>
                <tr>
                    <th>CRN</th>
                    <th>Section</th>
                    <th>Day</th>
                    <th>Location</th>
                    <th>Instructor</th>

                </tr>
                <?php foreach ($semester as $customer) : ?>
                    <tr>
                        <td><?php echo $customer['CRN']; ?></td>
                        <td><?php echo $customer['Section']; ?></td>
                        <td><?php echo $customer['Day']; ?></td>
                        <td><?php echo $customer['Location']; ?></td>
                        <td><?php echo $customer['Instructor']; ?></td>
                        
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