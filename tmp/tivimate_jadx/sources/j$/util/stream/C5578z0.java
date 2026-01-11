package j$.util.stream;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.z0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5578z0 implements DoubleConsumer {
    public final /* synthetic */ int a;

    public /* synthetic */ C5578z0(int i) {
        this.a = i;
    }

    private final void accept$j$$util$stream$Node$OfDouble$$ExternalSyntheticLambda0(double d) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfDouble$$ExternalSyntheticLambda0(double d) {
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.a;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.a) {
            case 0:
                return j$.util.function.a.d(this, doubleConsumer);
            default:
                return j$.util.function.a.d(this, doubleConsumer);
        }
    }
}
