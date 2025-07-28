#!/bin/bash

# TODO: Scrap files from /Notes folder and paste links into /Problems/Notes.md

update_notes() {
    local algo_notes_dir="../Notes/AlgoTemplates"
    local ds_notes_dir="../Notes/DataStructuresTemplates"
    local notes_md="../Notes.md"
}

# TODO: Scrap all problems and comments mentioned at the top of the files. Then update the Notes.md file section for problems review

update_problem_reviews() {
    local problems_dir = "../Problems"
    local notes_md="../Notes.md"
    local problems_list=$(find "$problems_dir" -type f -name "*.md" | sort)
}

