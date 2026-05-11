#include <iostream>
#include <filesystem>
#include <fstream>
#include <vector>
#include <string>

namespace fs = std::filesystem;

std::string toLower(const std::string& str) {
    std::string lower_str = str;
    std::transform(lower_str.begin(), lower_str.end(), lower_str.begin(), ::tolower);
    return lower_str;
}

void convertJpgTovoj(const fs::path& inputPath, const fs::path& outputDir) {
    fs::path outputPath = outputDir / (inputPath.stem().string() + ".voj");
    fs::create_directories(outputDir);
    std::vector<char> header(4, 0);

    std::ifstream input_file(inputPath, std::ios::binary);
    if (!input_file.is_open()) {
        std::cerr << "Failed to open file: " << inputPath.string() << std::endl;
        return;
    }

    std::vector<char> file_content((std::istreambuf_iterator<char>(input_file)), std::istreambuf_iterator<char>());
    input_file.close();

    std::ofstream output_file(outputPath, std::ios::binary);
    if (!output_file.is_open()) {
        std::cerr << "Failed to create file: " << outputPath.string() << std::endl;
        return;
    }

    output_file.write(header.data(), header.size());
    output_file.write(file_content.data(), file_content.size());
    output_file.close();

    std::cout << inputPath.filename().string() << " converted to " << outputPath.filename().string() << std::endl;
}

void convertTgaTovot(const fs::path& inputPath, const fs::path& outputDir) {
    fs::path outputPath = outputDir / (inputPath.stem().string() + ".vot");
    fs::create_directories(outputDir);
    std::vector<char> header(4, 0);

    std::ifstream input_file(inputPath, std::ios::binary);
    if (!input_file.is_open()) {
        std::cerr << "Failed to open file: " << inputPath.string() << std::endl;
        return;
    }

    std::vector<char> file_content((std::istreambuf_iterator<char>(input_file)), std::istreambuf_iterator<char>());
    input_file.close();

    std::ofstream output_file(outputPath, std::ios::binary);
    if (!output_file.is_open()) {
        std::cerr << "Failed to create file: " << outputPath.string() << std::endl;
        return;
    }

    output_file.write(header.data(), header.size());
    output_file.write(file_content.data(), file_content.size());
    output_file.close();

    std::cout << inputPath.filename().string() << " converted to " << outputPath.filename().string() << std::endl;
}

void convertvojToJpg(const fs::path& inputPath, const fs::path& outputDir) {
    fs::path outputPath = outputDir / (inputPath.stem().string() + ".ozj");
    fs::create_directories(outputDir);

    std::ifstream input_file(inputPath, std::ios::binary);
    if (!input_file.is_open()) {
        std::cerr << "Failed to open file: " << inputPath.string() << std::endl;
        return;
    }

    input_file.seekg(4, std::ios::beg);
    std::vector<char> file_content((std::istreambuf_iterator<char>(input_file)), std::istreambuf_iterator<char>());
    input_file.close();

    std::ofstream output_file(outputPath, std::ios::binary);
    if (!output_file.is_open()) {
        std::cerr << "Failed to create file: " << outputPath.string() << std::endl;
        return;
    }

    output_file.write(file_content.data(), file_content.size());
    output_file.close();

    std::cout << inputPath.filename().string() << " converted to " << outputPath.filename().string() << std::endl;
}

void convertvotToTga(const fs::path& inputPath, const fs::path& outputDir) {
    fs::path outputPath = outputDir / (inputPath.stem().string() + ".ozt");
    fs::create_directories(outputDir);

    std::ifstream input_file(inputPath, std::ios::binary);
    if (!input_file.is_open()) {
        std::cerr << "Failed to open file: " << inputPath.string() << std::endl;
        return;
    }

    input_file.seekg(4, std::ios::beg);
    std::vector<char> file_content((std::istreambuf_iterator<char>(input_file)), std::istreambuf_iterator<char>());
    input_file.close();

    std::ofstream output_file(outputPath, std::ios::binary);
    if (!output_file.is_open()) {
        std::cerr << "Failed to create file: " << outputPath.string() << std::endl;
        return;
    }

    output_file.write(file_content.data(), file_content.size());
    output_file.close();

    std::cout << inputPath.filename().string() << " converted to " << outputPath.filename().string() << std::endl;
}

void processEncryption(const fs::path& inputDir, const fs::path& outputDir) {
    for (const auto& entry : fs::recursive_directory_iterator(inputDir)) {
        if (entry.is_regular_file()) {
            std::string extension = toLower(entry.path().extension().string());
            fs::path relativePath = fs::relative(entry.path(), inputDir);
            fs::path targetDir = outputDir / relativePath.parent_path();

            if (extension == ".ozj") {
                convertJpgTovoj(entry.path(), targetDir);
            }
            else if (extension == ".ozt") {
                convertTgaTovot(entry.path(), targetDir);
            }
        }
    }
}

void processDecryption(const fs::path& inputDir, const fs::path& outputDir) {
    for (const auto& entry : fs::recursive_directory_iterator(inputDir)) {
        if (entry.is_regular_file()) {
            std::string extension = toLower(entry.path().extension().string());
            fs::path relativePath = fs::relative(entry.path(), inputDir);
            fs::path targetDir = outputDir / relativePath.parent_path();

            if (extension == ".voj") {
                convertvojToJpg(entry.path(), targetDir);
            }
            else if (extension == ".vot") {
                convertvotToTga(entry.path(), targetDir);
            }
        }
    }
}

int main() {
    std::cout << "Select conversion mode:" << std::endl;
    std::cout << "1 - Encrypt Images" << std::endl;
    std::cout << "2 - Decrypt Images" << std::endl;
    int choice;
    std::cin >> choice;

    fs::path decrypted_dir = fs::current_path() / "Images" / "Decrypted";
    fs::path encrypted_dir = fs::current_path() / "Images" / "Encrypted";

    try {
        if (choice == 1) {
            processEncryption(decrypted_dir, encrypted_dir);
        }
        else if (choice == 2) {
            processDecryption(encrypted_dir, decrypted_dir);
        }

        std::cout << "All files processed. Press any key to exit..." << std::endl;
    }
    catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }

    std::cin.ignore();
    std::cin.get();

    return 0;
}