package p081;

import com.google.android.gms.internal.measurement.ˏʻ;
import java.util.Iterator;
import p386.InterfaceC4615;

/* renamed from: ʿˈ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1718 implements Iterable, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f7019;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f7020;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f7021;

    public C1718(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f7020 = i;
        this.f7021 = ˏʻ.ᵔﹳ(i, i2, i3);
        this.f7019 = i3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1718)) {
            return false;
        }
        if (isEmpty() && ((C1718) obj).isEmpty()) {
            return true;
        }
        C1718 c1718 = (C1718) obj;
        return this.f7020 == c1718.f7020 && this.f7021 == c1718.f7021 && this.f7019 == c1718.f7019;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f7020 * 31) + this.f7021) * 31) + this.f7019;
    }

    public boolean isEmpty() {
        int i = this.f7019;
        int i2 = this.f7021;
        int i3 = this.f7020;
        return i > 0 ? i3 > i2 : i3 < i2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C1717(this.f7020, this.f7021, this.f7019);
    }

    public String toString() {
        StringBuilder sb;
        int i = this.f7021;
        int i2 = this.f7020;
        int i3 = this.f7019;
        if (i3 > 0) {
            sb = new StringBuilder();
            sb.append(i2);
            sb.append("..");
            sb.append(i);
            sb.append(" step ");
            sb.append(i3);
        } else {
            sb = new StringBuilder();
            sb.append(i2);
            sb.append(" downTo ");
            sb.append(i);
            sb.append(" step ");
            sb.append(-i3);
        }
        return sb.toString();
    }
}
