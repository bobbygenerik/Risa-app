package j$.util.stream;

/* loaded from: classes2.dex */
public final class V1 extends W1 {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.b++;
    }

    @Override // j$.util.stream.R1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.Q1
    public final void i(Q1 q1) {
        this.b += ((W1) q1).b;
    }
}
