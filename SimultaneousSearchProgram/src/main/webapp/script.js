document.getElementById('createSrcInputsBtn').addEventListener('click', function() {
    const count = document.getElementById('iframeCount').value;
    const srcInputContainer = document.getElementById('srcInputContainer');
    srcInputContainer.innerHTML = '';
    document.getElementById('iframeContainer').innerHTML = '';

    if (count <= 0) {
        alert("Please enter a valid number of websites.");
        return;
    }

    for (let i = 0; i < count; i++) {
        const label = document.createElement('label');
        label.textContent = `Website ${i + 1}:`;
        const input = document.createElement('input');
        input.type = 'text';
        input.placeholder = `Paste URL...`;
        input.className = 'iframeSrcInput';

        srcInputContainer.appendChild(label);
        srcInputContainer.appendChild(input);
        srcInputContainer.appendChild(document.createElement('br'));
    }

    document.getElementById('createIframesBtn').style.display = 'inline-block';
});




const originalUrls = {
    wikipedia: "https://www.wikipedia.org/",
    pexels: "https://www.pexels.com/",
    economist: "https://www.economist.com/"
};

document.getElementById('createIframesBtn').addEventListener('click', function() {
    const iframeContainer = document.getElementById('iframeContainer');
    iframeContainer.innerHTML = '';

    const srcInputs = document.querySelectorAll('.iframeSrcInput');

    srcInputs.forEach((input, index) => {
        const src = input.value;
        if (src) {
            const iframe = document.createElement('iframe');
            iframe.src = src;
            iframe.title = `Iframe ${index + 1}`;
            iframe.classList.add('dynamicIframe');
            iframeContainer.appendChild(iframe);
        }
    });
});


function search() {
    const query = document.getElementById('searchQuery').value;
    if (query) {
        const iframes = document.querySelectorAll('.dynamicIframe');
        iframes.forEach(iframe => {
            if (iframe.src.startsWith(originalUrls.wikipedia)) {
                iframe.src = originalUrls.wikipedia + "wiki/" + query;
            } else if (iframe.src.startsWith(originalUrls.pexels)) {
                iframe.src = originalUrls.pexels + "search/" + query;
            } else if (iframe.src.startsWith(originalUrls.economist)) {
                iframe.src = originalUrls.economist + "search?q=" + query;
            } else {
                alert(`Unknown search type: ${searchType}`);
                return;
            }
        });
    } else {
        alert("Please enter a search term.");
    }
}

function copyText(button) {
    const textToCopy = button.previousElementSibling.textContent;
    navigator.clipboard.writeText(textToCopy);
}

document.getElementById('toggleWebsiteList').addEventListener('click', function(e) {
    e.preventDefault();
    const dropdown = document.getElementById('websiteListDropdown');
    if (dropdown.style.display === 'none') {
        dropdown.style.display = 'block';
    } else {
        dropdown.style.display = 'none';
    }
});


