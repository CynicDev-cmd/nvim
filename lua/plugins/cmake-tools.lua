return {
    {
        "Civitasv/cmake-tools.nvim",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },

        keys = {
            {
                "<leader>mg",
                "<cmd>CMakeGenerate<cr>",
                desc = "CMake configure",
            },
            {
                "<leader>mb",
                "<cmd>CMakeBuild<cr>",
                desc = "CMake build",
            },
            {
                "<leader>mr",
                "<cmd>CMakeRun<cr>",
                desc = "CMake run",
            },
            {
                "<leader>mc",
                "<cmd>CMakeClean<cr>",
                desc = "CMake clean",
            },
            {
                "<leader>mt",
                "<cmd>CMakeSelectBuildTarget<cr>",
                desc = "Select build target",
            },
        },

        opts = {
            cmake_command = "cmake",
            ctest_command = "ctest",

            cmake_use_preset = false,
            cmake_regenerate_on_save = true,
            cmake_build_directory = "build",

            cmake_generate_options = {
                "-G",
                "Ninja",
                "-DCMAKE_CXX_COMPILER=C:/msys64/ucrt64/bin/g++.exe",
                "-DCMAKE_MAKE_PROGRAM=C:/Tools/ninja.exe",
                "-DCMAKE_PREFIX_PATH=C:/msys64/ucrt64",
                "-DCMAKE_BUILD_TYPE=Debug",
                "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON",
            },

            cmake_compile_commands_options = {
                action = "copy",
                target = vim.loop.cwd,
            },
        },
    },
}
