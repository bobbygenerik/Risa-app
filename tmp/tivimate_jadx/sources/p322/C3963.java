package p322;

/* renamed from: ᴵˋ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3963 extends AbstractC3982 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3977 f15281 = C3977.f15328;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3963.class != obj.getClass()) {
            return false;
        }
        return this.f15281.equals(((C3963) obj).f15281);
    }

    public final int hashCode() {
        return this.f15281.hashCode() + (C3963.class.getName().hashCode() * 31);
    }

    public final String toString() {
        return "Failure {mOutputData=" + this.f15281 + '}';
    }
}
