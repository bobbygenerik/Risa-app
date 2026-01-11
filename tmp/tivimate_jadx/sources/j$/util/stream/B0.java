package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class B0 implements IntConsumer {
    public final /* synthetic */ int a;

    public /* synthetic */ B0(int i) {
        this.a = i;
    }

    private final void accept$j$$util$stream$Node$OfInt$$ExternalSyntheticLambda0(int i) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfInt$$ExternalSyntheticLambda0(int i) {
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int i2 = this.a;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.a) {
            case 0:
                return j$.util.function.a.e(this, intConsumer);
            default:
                return j$.util.function.a.e(this, intConsumer);
        }
    }
}
