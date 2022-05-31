window.onload = function () {
  $('.qty-update-btn').on('click', function () {
    const parent = $(this).closest('td');
    const parent2 = $(this).closest('tr');
    const qtyEl = $('.quantity', parent);
    const seq_cart = $('.item-delete', parent2);
    const calc = $(this).data('type') === 'minus' ? -1 : 1;
    const currentQty = parseInt(qtyEl.val()) || 0;

    qtyEl.val(currentQty + calc);

    if (Number(qtyEl.val()) === 0) {
      qtyEl.val(1);
      alert('1개 미만으로 수정은 불가능합니다.');
      return;
    }
    alert('수량이 변경되었습니다.');
    location.href =
      '/toChangeQty.mem?cart_quantity=' +
      qtyEl.val() +
      '&seq_cart=' +
      seq_cart.val();
  });

  $('.quantity').change(function () {
    const parent2 = $(this).closest('tr');
    const seq_cart = $('.item-delete', parent2);

    if (Number($(this).val()) < 1 || null || '') {
      $(this).val(1);
      alert('1개 미만으로 수정은 불가능합니다.');
      return;
    }
    alert('수량이 변경되었습니다.');
    location.href =
      '/toChangeQty.mem?cart_quantity=' +
      $(this).val() +
      '&seq_cart=' +
      seq_cart.val();
  });

  $('.item-delete').on('click', function () {
    const check = confirm('상품을 삭제 하시겠습니까?');
    if (check) {
      alert('장바구니에서 삭제되었습니다.');
      location.href = '/toDeleteCart.mem?seq_cart=' + $(this).val();
    }
  });

  document.getElementById('checkAll').addEventListener('click', function () {
    const checkboxes = document.getElementsByName('seq_cart');
    checkboxes.forEach(checkbox => {
      checkbox.checked = document.getElementById('checkAll').checked;
    });
  });

  $('.check').on('click', function () {
    const total = $('.check').length;
    const checked = $('.check:checked').length;

    if (total != checked) {
      $('#checkAll').prop('checked', false);
    } else {
      $('#checkAll').prop('checked', true);
    }
  });

  $('.btnOrder').on('click', function () {
    const checkboxes = document.getElementsByName('seq_cart');
    checkboxes.forEach((checkbox, index) => {
      if (!checkbox.checked) {
        checkbox.removeAttribute('name');
      }
      // console.log(checkbox.value);
      // form 제출
      document.getElementById('signupForm').submit();
    });
  });
};
