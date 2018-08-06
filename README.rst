A docker container that collects Kelmu annotation files.
Image collects annotation files, combines them and copies those and kelmu js to destination.

.. code-block:: sh

    docker run --rm \
      --mount type=tmpfs,destination=/work,tmpfs-size=100M \
      -v $(pwd)/_build:/work/build \
      -v $(pwd):/work/src:ro \
      -w /work \
      -u $(id -u):$(id -g) \
      apluslms/compile-kelmu
