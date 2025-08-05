#!/bin/bash

create_new_problem() {
    local problems_dir="$HOME/Problems"

    read -p "Enter the LeetCode problem number: " problem_number
    read -p "Enter the problem title: " problem_title
    
    problem_number=$(echo "$problem_number" | tr -d '[:space:]')
    file_name="Leetcode${problem_number}.swift"
    
    mkdir -p "$problems_dir"
    full_path="$problems_dir/$file_name"

    echo "// $problem_title" > "$full_path"
    echo "" >> "$full_path"

    echo "Created file: $full_path"
}

create_new_problem
