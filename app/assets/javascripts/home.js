(function() {
  // 生成订单
  $('.create-order-form').submit(function() {
    var addressID = $('input[name="address_id"]:checked').val(),
        $form = $(this);

    // 但在事件函数中，return false表示不执行事件的响应函数
    // 但在事件函数中，return true不起任何作用，响应函数会继续执行
    if (!addressID) {
      alert("请选择收货地址!");
      return false;
    } else {
      $form.find('input[name="address_id"]').val(addressID);
      return true;
    }
  })

  //收货地址
  $(document).on('click', '.new-address-btn', function() {
    $.get('/addresses/new', function(data) {
      if ($('#address_form_modal').length > 0) {
        $('#address_form_modal').remove();
      }

      $('body').append(data);
      $('#address_form_modal').modal();
    })

    return false;
  })
  .on('ajax:success', '.address-form', function(e) {
    var status = e.detail[0].status;
    var data = e.detail[0].data;
    if (status == 'ok') {
      $('#address_form_modal').modal('hide');
      $('#address_list').html(data);
    } else {
      $('#address_form_modal').html($(data).html());
    }
  })
  .on('ajax:success', '.edit-address-btn', function(e) {
    var status = e.detail[0].status;
    var data = e.detail[0].data;
    if ($('#address_form_modal').length > 0) {
      $('#address_form_modal').remove();
    }

    $('body').append(data);
    $('#address_form_modal').modal();
  })

  .on('ajax:success', '.set-default-address-btn, .remove-address-btn', function(e) {
    var data = e.detail[0].data;
    $('#address_list').html(data);
  })

  // 购物车
  $('.add-to-cart-btn').on('click', function() {
    // 变量名区分大小写，允许包含字母、数字、美元符号($)和下划线，但第一个字符不允许是数字，不允许包含空格和其他标点符号
    var $this = $(this),
        $amount = $('input[name="amount"]'),
        $prog = $this.find('i');

    // parseInt() 函数可解析一个字符串，并返回一个整数。
    // return语句终止函数的执行，并返回一个指定的值给函数调用者。
    if ($amount.length > 0 && parseInt($amount.val()) <= 0) {
      alert("购买数量至少为 1");
      return false;
    }

    $.ajax({
      url: $this.attr('href'),
      method: 'post',
      data: { product_id: $this.data('product-id'), amount: $amount.val() },
      beforeSend: function() {
        if (!$prog.hasClass('fa-spinner')) {
          $prog.addClass('fa-spinner');
        }
        $prog.show();
      },

      // remove() 方法移除被选元素，包括所有文本和子节点。
      // 该方法不会把匹配的元素从 jQuery 对象中删除，因而可以在将来再使用这些匹配的元素。
      // data 为请求成功时返回的数据
      success: function(data) {
        if ($('#shopping_cart_modal').length > 0) {
          $('#shopping_cart_modal').remove();
        }

        $('body').append(data);
        $('#shopping_cart_modal').modal();
      },
      complete: function() {
        $prog.hide();
      }
    })

    return false;
  })

})()
