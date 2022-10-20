<?php $__env->startSection('content'); ?>
    <h1>Detalles Ordenes</h1>

    <h4 class="text-center"><strong>Total a pagar: $ </strong> <?php echo e($cart->total); ?></h4>

    <div class="text-center mb-3">
        <form
            class="d-inline"
            method="POST"
            action="<?php echo e(route('orders.store')); ?>"
        >
            <?php echo csrf_field(); ?>
            <button type="submit" class="btn btn-success">Confirmar Orden</button>
        </form>
    </div>

    <div class="table-responsive">
        <table class="table table-striped">
            <thead class="thead-light">
                <tr>
                    <th>Producto</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $cart->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td>
                        <img src="<?php echo e(asset($product->images->first()->path)); ?>" width="100">
                        <?php echo e($product->title); ?>

                    </td>
                    <td><?php echo e($product->price); ?></td>
                    <td><?php echo e($product->pivot->quantity); ?></td>
                    <td>
                        <strong>
                            $<?php echo e($product->total); ?>

                        </strong>
                    </td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Proyecto\resources\views/orders/create.blade.php ENDPATH**/ ?>