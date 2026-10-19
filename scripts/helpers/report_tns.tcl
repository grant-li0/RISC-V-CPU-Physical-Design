proc report_tns {} {
    set paths [report_timing -collection -max_paths 1000000]
    set tns 0.0
    
    foreach_in_collection path $paths {
        set path_slack [get_db $path .slack]

        if {$path_slack < 0.0} {
            set tns [expr {$tns + $path_slack}]
        }
    }
    return $tns
}