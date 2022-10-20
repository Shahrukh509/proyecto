<?php $__env->startSection('content'); ?>
    <h1>Tu Carro</h1>
    <?php if(!isset($cart) || $cart->products->isEmpty()): ?>
        <div class="alert alert-warning">
            Tu Carro está vacío.
        </div>
    <?php else: ?>
        <h4 class="text-center">Total de Carro:  $ <strong><?php echo e($cart->total); ?></strong></h4>
        <a class="btn btn-success mb-3" href="<?php echo e(route('orders.create')); ?>">
            Comenzar Orden
        </a>
        <div class="row">
            <?php $__currentLoopData = $cart->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-12 col-md-3">
                    <?php echo $__env->make('components.product-card', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Proyecto\resources\views/carts/index.blade.php ENDPATH**/ ?>