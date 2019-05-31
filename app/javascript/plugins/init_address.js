import places from 'places.js';

const initAddress = () => {
  const addressInput = document.getElementById('bicycle_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAddress };
