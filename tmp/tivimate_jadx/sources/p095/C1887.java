package p095;

/* renamed from: ˆʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1887 extends AbstractC1889 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final C1887 f7531 = new Object();

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // p095.AbstractC1889
    /* renamed from: ⁱˊ */
    public final boolean mo4812() {
        return false;
    }

    @Override // p095.AbstractC1889
    /* renamed from: ﹳٴ */
    public final Object mo4813() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }
}
