import places from 'places.js';

const initAlgolia = () => {
  const addressInput = document.getElementById('query');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAlgolia };
