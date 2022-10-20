
<div class="card-body">
    <div id="carousel<?php echo e($product->id); ?>" class="carousel slide carousel-fade">
        <div class="carousel-inner">
            <?php $__currentLoopData = $product->images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="carousel-item <?php echo e($loop->first ? 'active' : ''); ?>">
                    <img class="d-block w-100 card-img-top" src="<?php echo e(asset($image->path)); ?>" height= "300" >
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
        <a class="carousel-control-prev" href="#carousel<?php echo e($product->id); ?>" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>

        <a class="carousel-control-next" href="#carousel<?php echo e($product->id); ?>" role="button" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    <div class="card-body">
        <h4 class="text-right"><strong>$ <?php echo e($product->price); ?></strong></h4>
        <h5 class="card-title"><?php echo e($product->title); ?></h5>
        <p class="card-text"><?php echo e($product->description); ?></p>
        <p class="card-text"><strong><?php echo e($product->stock); ?> UN </strong></p>
        <?php if(isset($cart)): ?>
            <p class="card-text"><?php echo e($product->pivot->quantity); ?> En tu Carro: <strong>($<?php echo e($product->total); ?>)</strong></p>
            <form
                class="d-inline"
                method="POST"
                action="<?php echo e(route('products.carts.destroy', ['cart' => $cart->id, 'product' => $product->id])); ?>"
            >
                <?php echo csrf_field(); ?>
                <?php echo method_field('DELETE'); ?>
                <button type="submit" class="btn btn-warning">Remover desde el carro</button>
            </form>
        <?php else: ?>
            <form
                class="d-inline"
                method="POST"
                action="<?php echo e(route('products.carts.store', ['product' => $product->id])); ?>"
            >
                <?php echo csrf_field(); ?>
                <button type="submit" class="btn btn-success">Agregar al Carro</button>
            </form>
        <?php endif; ?>
    </div>
</div>

<?php /**PATH C:\xampp\htdocs\Proyecto\resources\views/components/product-card.blade.php ENDPATH**/ ?>