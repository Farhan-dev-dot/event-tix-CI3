<div class="container">
    
    <div class="row">
        <div class="col-md-8">
        <h2 class="mt-3">Tampilan Pemesanan</h2>
            <div class="table-responsive-sm">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Menu</th>
                            <th>Harga</th>
                            <th>Jumlah</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody id="myTable">
                        <?php if($this->cart->total_items() > 0) { 
                    foreach($cartItems as $item) { ?>
                        <tr>
                            <td>
                                <?php $image = $item['image'];?>
                                <img class="" width="100"
                                    src="<?php echo base_url().'public/uploads/dishesh/thumb/'.$image; ?>">
                            </td>
                            <td><?php echo $item['name']; ?></td>
                            <td><?php echo 'Rp. '.$item['price']; ?></td>
                            <td><?php echo $item['qty']; ?></td>
                            <td><?php echo 'Rp. '.$item['subtotal']; ?></td>
                        </tr>
                        <?php } ?>
                        <?php } else { ?>
                        <tr>
                            <td colspan="5">
                                <p>Belum Ada Pesanan!!</p>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4"></td>
                            <?php  if($this->cart->total_items() > 0) { ?>
                            <td class="text-left">Total: <b><?php echo 'Rp. '.$this->cart->total();?></b></td>
                            <?php } ?>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <div class="col-md-4">
            <form action="<?php echo base_url().'checkout/index';?>" method="POST"
                class="form-container  shadow-container" style="width:80%">
                <h3 class="mt-3">Detail Pemesanan</h3><hr>
                <div class="form-group">
                    <label for="address">Alamat</label>
                    <textarea name="address" type="text" style="height:70px;"
                        class="form-control
                    <?php echo (form_error('address') != "") ? 'is-invalid' : '';?>"><?php echo set_value('address', $user['address']);?></textarea>
                    <?php echo form_error('address'); ?>
                </div>
                <p class="lead mb-0">Pilih Metode Pembayaran:</p>
                <div class="container p-2 mb-3" style="background: #e5e5e5;">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="payment" id="paymentbca" value="BCA">
                        <label class="form-check-label" for="paymentbca">VA BCA</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="payment" id="paymentbri" value="BRI">
                        <label class="form-check-label" for="paymentbri">BRI</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="payment" id="paymentmandiri" value="Mandiri">
                        <label class="form-check-label" for="paymentmandiri">Mandiri</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="payment_code">Kode Pembayaran:</label>
                    <input type="text" name="payment_code" class="form-control" id="payment_code" value="<?php echo rand(100000, 999999);?>" readonly>
                </div>
                <div>
                    <a href="<?php echo base_url().'cart'; ?>" class="btn btn-warning"><i class="fas fa-angle-left"></i>
                        Back to cart</a>
                    <button type="submit" name="placeOrder" class="btn btn-success">Place Order <i
                            class="fas fa-angle-right"></i></button>
                </div>
                </from>
        </div>
    </div>
</div>