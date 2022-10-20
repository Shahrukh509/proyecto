<?php $__env->startSection('content'); ?>
    <h1></h1>
    <?php if(empty($products)): ?>
        <div class="alert alert-danger">
            ¡No hay productos todavía!
        </div>
    <?php else: ?>
        <div class="row">
            

            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                <div class="col-12 col-md-3">
                    <div class="table-responsive">
                        <?php echo $__env->make('components.product-card', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                 </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            

            
        </div>
    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Proyecto\resources\views/welcome.blade.php ENDPATH**/ ?>