#!/bin/bash

echo "📖 Downloading English Bible JSON files..."
echo "=========================================="

# Create English Bible directory
mkdir -p english-bible
cd english-bible

# English Bible books list (King James Version)
books=(
    "Genesis" "Exodus" "Leviticus" "Numbers" "Deuteronomy"
    "Joshua" "Judges" "Ruth" "1_Samuel" "2_Samuel"
    "1_Kings" "2_Kings" "1_Chronicles" "2_Chronicles" "Ezra"
    "Nehemiah" "Esther" "Job" "Psalms" "Proverbs"
    "Ecclesiastes" "Song_of_Solomon" "Isaiah" "Jeremiah" "Lamentations"
    "Ezekiel" "Daniel" "Hosea" "Joel" "Amos"
    "Obadiah" "Jonah" "Micah" "Nahum" "Habakkuk"
    "Zephaniah" "Haggai" "Zechariah" "Malachi"
    "Matthew" "Mark" "Luke" "John" "Acts"
    "Romans" "1_Corinthians" "2_Corinthians" "Galatians" "Ephesians"
    "Philippians" "Colossians" "1_Thessalonians" "2_Thessalonians"
    "1_Timothy" "2_Timothy" "Titus" "Philemon" "Hebrews"
    "James" "1_Peter" "2_Peter" "1_John" "2_John"
    "3_John" "Jude" "Revelation"
)

echo "📥 Downloading ${#books[@]} English Bible books..."

for book in "${books[@]}"; do
    echo "Downloading $book..."
    
    # Download from Bible API (you can replace with your preferred source)
    curl -s "https://bible-api.com/$book" > "${book}.json" 2>/dev/null
    
    if [ $? -eq 0 ]; then
        echo "✅ $book downloaded successfully"
    else
        echo "❌ Failed to download $book"
    fi
    
    # Small delay to be respectful to the API
    sleep 0.5
done

echo ""
echo "📋 Summary:"
echo "============"
echo "Total books: ${#books[@]}"
echo "Downloaded files: $(ls -1 *.json 2>/dev/null | wc -l)"
echo ""
echo "📁 Files saved in: english-bible/"
echo ""
echo "Next steps:"
echo "1. Review the downloaded files"
echo "2. Copy them to your main directory"
echo "3. Update your app to use English files"
