package p322;

/* renamed from: ᴵˋ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3978 extends AbstractC3982 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3977 f15330 = C3977.f15328;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3978.class != obj.getClass()) {
            return false;
        }
        return this.f15330.equals(((C3978) obj).f15330);
    }

    public final int hashCode() {
        return this.f15330.hashCode() + (C3978.class.getName().hashCode() * 31);
    }

    public final String toString() {
        return "Success {mOutputData=" + this.f15330 + '}';
    }
}
