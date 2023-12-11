import os
import json
import markdown2
import re
from bs4 import BeautifulSoup
from concurrent.futures import ThreadPoolExecutor

def clone_wiki_repository(repo_url, dest_path):
    try:
        # Run git clone command
        clone_command = f"git clone {repo_url} {dest_path}"
        os.system(clone_command)

    except Exception as e:
        print(f"Error during cloning: {e}")

def process_wiki_page(file_path):
    try:
        # Read the content of the .md file
        with open(file_path, "r", encoding="utf-8") as file:
            content = file.read()

        title = os.path.basename(file_path).replace(".md", "")
        
        # Replace dashes with underscores in the title
        title = title.replace("-", "_")

        # Convert title to lowercase
        title = title.lower()

        print(f"Processing page: {title}")

        # Preprocess markdown to remove tables
        content = "\n".join(line for line in content.splitlines() if not line.strip().startswith("|"))

        # Convert markdown to HTML
        html_content = markdown2.markdown(content)

        # Parse HTML and extract text
        soup = BeautifulSoup(html_content, "html.parser")
        extracted_text = soup.get_text(separator=" ", strip=True)

        # Apply regex filter to remove unwanted content
        extracted_text = re.sub(r'\[\[(.*?)\]\]', r'\1', extracted_text)  # Remove [[...]] markup

        return {"title": title, "content": extracted_text}

    except Exception as e:
        print(f"Error processing {file_path}: {e}")
        return None

def main():
    repo_url = "https://github.com/SleepyTrousers/EnderIO-1.5-1.12.wiki.git"
    local_clone_path = "wiki_clone"

    try:
        # Clone the wiki repository locally
        clone_wiki_repository(repo_url, local_clone_path)

        # Process .md files in the local clone
        tooltips = []
        for root, dirs, files in os.walk(local_clone_path):
            for file in files:
                if file.endswith(".md"):
                    file_path = os.path.join(root, file)
                    tooltip = process_wiki_page(file_path)
                    if tooltip:
                        tooltips.append(tooltip)
                        print(f"Processed page: {tooltip['title']}")

        # Create the final JSON structure
        json_data = {"tooltips": tooltips}

        with open("tooltips.json", "w", encoding="utf-8") as json_file:
            json.dump(json_data, json_file, ensure_ascii=False, indent=2)
        
        print("Export successful: tooltips.json")

    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
