import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('van_address');
  console.log(addressInput)
  if (addressInput) {
    places({ container: addressInput });
  }
};
initAutocomplete();

export { initAutocomplete };
