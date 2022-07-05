<?php

function slugify($string)
{
    return strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $string), '-'));
}

require_once "database.php";

if (password_verify('password', $_POST['token'])) {
    if (isset($_POST['read_post'])) {
        if ($_POST['slug']) {
            $posts = mysqli_fetch_all(mysqli_query($conn, "SELECT posts.*, categories.name FROM posts LEFT JOIN categories ON posts.category_id=categories.id WHERE posts.slug = '$_POST[slug]' ORDER BY posts.created_at DESC"), MYSQLI_ASSOC);
        } else {
            $posts = mysqli_fetch_all(mysqli_query($conn, "SELECT posts.*, categories.name FROM posts LEFT JOIN categories ON posts.category_id=categories.id ORDER BY posts.created_at DESC"), MYSQLI_ASSOC);
        }
        echo json_encode([
            "status" => true,
            "response" => $posts
        ]);
    }
    if (isset($_POST['write_post'])) {
        $categoryId = $_POST['category_id'];
        $title = $_POST['title'];
        $slug = slugify($_POST['title']);
        $body = htmlspecialchars($_POST['body']);
        mysqli_query($conn, "INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `created_at`, `updated_at`) VALUES (NULL, '$categoryId', '$title', '$slug', '$body', CURRENT_TIME(), NULL);");
        echo json_encode([
            "status" => true,
            "response" => "Post added successfully"
        ]);
    }
    if (isset($_POST['update_post'])) {
        $postId = $_POST['id'];
        $categoryId = $_POST['category_id'];
        $title = $_POST['title'];
        $slug = slugify($_POST['title']);
        $body = htmlspecialchars($_POST['body']);
        mysqli_query($conn, "UPDATE `posts` SET category_id = '$categoryId', title = '$title', slug = '$slug', body = '$body', updated_at = CURRENT_TIME() WHERE posts.id = '$postId';");
        echo json_encode([
            "status" => true,
            "response" => "Post updated successfully"
        ]);
    }
    if (isset($_POST['delete_post'])) {
        $postId = $_POST['id'];
        mysqli_query($conn, "DELETE FROM `posts` WHERE `posts`.`id` = $postId;");
        echo json_encode([
            "status" => true,
            "response" => "Post deleted successfully"
        ]);
    }
    if (isset($_POST['get_categories'])) {
        $categories = mysqli_fetch_all(mysqli_query($conn, "SELECT * FROM `categories`;"), MYSQLI_ASSOC);
        echo json_encode([
            "status" => true,
            "response" => $categories
        ]);
    }
} else {
    echo json_encode([
        "status" => false,
        "response" => "Wrong token"
    ]);
}

// INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `created_at`, `updated_at`) VALUES (NULL, '1', 'ini judul', 'ini-judul', '<p>ini body</p>', CURRENT_TIME(), NULL);
// UPDATE `posts` SET `body` = '<p>ini bodynya</p>' WHERE `posts`.`id` = 141;
// DELETE FROM `posts` WHERE `posts`.`id` = 122;
