const total_price = document.getElementById('total_price');
let unit_price
if (total_price){
  unit_price = parseInt(document.querySelector('.card__price').innerHTML.slice(0,-1),10);
}

const start = document.getElementById('rent_start_date');
const end = document.getElementById('rent_end_date');

const duration = (from, to) => {
  const dur = Math.ceil((Date.parse(to) - Date.parse(from)) / (1000 * 60 * 60 * 24)) + 1;
  return dur
};

const changeTotalPrice = (duration) => {
  total_price.innerHTML = `Total price: ${unit_price * duration}€`;
  total_price.classList.remove('hidden');
};

const initUpdateTotalPriceOnRangeDateChange = () => {
  if (start){
    start.addEventListener('change', (event) => {
      total_price.classList.add('hidden');

      if (end.value != '') {

        changeTotalPrice(duration(start.value, end.value));
      }
    })
  }

  if (end){
    end.addEventListener('change', (event) => {
      total_price.classList.add('hidden');

      if (start.value != '') {
        changeTotalPrice(duration(start.value, end.value));
      }
    })
  }
}

export { initUpdateTotalPriceOnRangeDateChange };
