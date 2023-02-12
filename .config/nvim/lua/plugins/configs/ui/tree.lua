--// Imports
local NeoTree = require("neo-tree")

--// Core
NeoTree.setup({
    ["close_if_last_window"] = false,
    ["close_floats_on_escape_key"] = true,
    ["default_source"] = "filesystem",
    ["enable_diagnostics"] = true,
    ["enable_git_status"] = true,
    ["enable_modifined_markers"] = true,
    ["enable_refresh_on_write"] = true,
    ["git_status_async"] = true,
    ["git_status_async_options"] = {
        ["batch_size"] = 1000,
        ["batch_delay"] = 10,
        ["max_lines"] = 10000
    },
    ["hide_root_node"] = false,
    ["log_level"] = "info",
    ["log_to_file"] = false,
    ["open_files_in_last_window"] = true,
    ["popup_border_style"] = "rounded",
    ["resize_timer_interval"] = 500,
    ["sort_case_insensitive"] = false,
    ["sort_function"] = nil,
    ["use_popups_for_input"] = true,
    ["use_default_mappings"] = true,
    ["default_component_configs"] = {
        ["container"] = {
            ["enable_character_fade"] = true
        },
        ["indent"] = {
            ["indent_size"] = 2,
            ["padding"] = 1,
            ["with_markers"] = true,
            ["indent_marker"] = "│",
            ["last_indent_marker"] = "└",
            ["highlight"] = "NeoTreeIndentMarker",
            ["with_expanders"] = nil,
            ["expander_collapsed"] = "",
            ["expander_expanded"] = "",
            ["expander_highlight"] = "NeoTreeExpander"
        },
        ["icon"] = {
            ["folder_closed"] = "",
            ["folder_open"] = "",
            ["folder_empty"] = "ﰊ",
            ["default"] = "*",
            ["highlight"] = "NeoTreeFileIcon"
        },
        ["modified"] = {
            ["symbol"] = "[+]",
            ["highlight"] = "NeoTreeModified"
        },
        ["name"] = {
            ["trailing_slash"] = false,
            ["use_git_status_colors"] = true,
            ["highlight"] = "NeoTreeFileName"
        },
        ["git_status"] = {
            ["symbols"] = {
                ["added"] = "✚",
                ["deleted"] = "✖",
                ["modified"] = "✖",
                ["renamed"] = "",
                ["untracke"] = "",
                ["ignored"] = "",
                ["unstaged"] = "",
                ["staged"] = "",
                ["conflict"] = ""
            },
            ["align"] = "right"
        }
    },
    ["renderers"] = {
        ["directory"] = {
            { "indent" },
            { "icon" },
            { "current_filter" },
            {
                "container",
                ["width"] = "100%",
                ["right_padding"] = 1,
                ["content"] = {
                    { "name", ["zindex"] = 10 },
                    { "clipboard", ["zindex"] = 10 },
                    { "diagnostics", ["error_only"] = true, ["zindex"] = 20, ["align"] = "right" }
                }
            }
        },
        ["file"] = {
            { "indent" },
            { "icon" },
            {
                "container",
                ["width"] = "100%",
                ["right_padding"] = 1,
                ["content"] = {
                    {
                        "name",
                        ["use_git_status_colors"] = true,
                        ["zindex"] = 10
                    },
                    { "clipboard", ["zindex"] = 10 },
                    { "bufnr", ["zindex"] = 10 },
                    { "modified", ["zindex"] = 20, ["align"] = "right" },
                    { "diagnostics", ["zindex"] = 20, ["align"] = "right" },
                    { "git_status", ["zindex"] = 20, ["align"] = "right" }
                }
            }
        },
        ["message"] = {
            { "indent", ["with_markers"] = false },
            { "name", ["highlight"] = "NeoTreeMessage" }
        }
    },
    ["nesting_rules"] = {},
    ["window"] = {
        ["position"] = "left",
        ["width"] = 30,
        ["popup"] = {
            ["size"] = {
                ["height"] = "80%",
                ["width"] = "40%"
            },
            ["position"] = "50%"
        },
        ["mapping_options"] = {
            ["noremap"] = true,
            ["nowait"] = true
        },
        ["mappings"] = {
            ["<space>"] = {
                "toggle_node",
                ["nowait"] = false
            },
            ["<2-LeftMouse>"] = "open",
            ["<cr>"] = "open",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            ["t"] = "open_tabnew",
            ["w"] = "open_with_window_picker",
            ["C"] = "close_node",
            ["z"] = "close_all_nodes",
            ["R"] = "refresh",
            ["a"] = {
                "add",
                ["config"] = {
                    ["show_path"] = "relative"
                }
            },
            ["A"] = "add_directory",
            ["d"] = "delete",
            ["r"] = "rename",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ['p'] = "paste_from_clipboard",
            ['c'] = "copy",
            ["m"] = "move",
            ["q"] = "close_window",
            ["?"] = "show_help"
        }
    },
    ["filesystem"] = {
        ["window"] = {
            ["mappings"] = {
                ["H"] = "toggle_hidden",
                ["/"] = "fuzzy_finder",
                ["D"] = "fuzzy_finder_directory",
                ["f"] = "filter_on_submit",
                ["<C-x>"] = "clear_filter",
                ["<bs>"] = "navigate_up",
                ["."] = "set_root",
                ["[g"] = "prev_git_modified",
                ["]g"] = "next_git_modified"
            }
        },
        ["async_directory_scan"] = "auto",
        ["cwd_target"] = {
            ["sidebar"] = "tab",
            ["current"] = "window",
        },
        ["filtered_items"] = {
            ["visible"] = false,
            ["force_visible_in_empty_folder"] = false,
            ["hide_dotfiles"] = false,
            ["hide_gitignored"] = false,
            ["hide_hidden"] = true,
            ["hide_by_pattern"] = {},
            ["never_show"] = {}
        },
        ["find_by_full_path_words"] = false,
        ["group_empty_dirs"] = true,
        ["search_limit"] = 50,
        ["follow_current_file"] = false,
        ["hijack_netrw_behavior"] = "open_default",
        ["use_libuv_file_watcher"] = false
    },
    ["buffers"] = {
        ["bind_to_cwd"] = true,
        ["follow_current_file"] = true,
        ["group_empty_dirs"] = true,
        ["window"] = {
            ["mappings"] = {
                ["<bs>"] = "navigate_up",
                ["."] = "set_root",
                ["bd"] = "buffer_delete"
            }
        }
    },
    ["git_status"] = {
        ["window"] = {
            ["mappings"] = {
                ["A"] = "git_add_all",
                ["gu"] = "git_unstage_file",
                ["ga"] = "git_add_file",
                ["gr"] = "git_revert_file",
                ["gc"] = "git_commit",
                ["gp"] = "git_push",
                ["gg"] = "git_commit_and_push"
            }
        }
    }
})
