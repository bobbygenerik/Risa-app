package j$.util.stream;

import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class D0 implements LongConsumer {
    public final /* synthetic */ int a;

    public /* synthetic */ D0(int i) {
        this.a = i;
    }

    private final void accept$j$$util$stream$Node$OfLong$$ExternalSyntheticLambda0(long j) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfLong$$ExternalSyntheticLambda0(long j) {
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.a;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.a) {
            case 0:
                return j$.util.function.a.f(this, longConsumer);
            default:
                return j$.util.function.a.f(this, longConsumer);
        }
    }
}
