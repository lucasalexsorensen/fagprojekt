function Error = LeastSquare(yStore,Data)

err = (Data-yStore).^2;
Error = sum(sum(err));
