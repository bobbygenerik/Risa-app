package p142;

import android.graphics.Rect;
import java.util.Comparator;
import p158.C2535;
import ᵎˉ.ⁱˊ;

/* renamed from: ˉـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2379 implements Comparator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f9172;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ⁱˊ f9174;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Rect f9173 = new Rect();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Rect f9175 = new Rect();

    public C2379(boolean z, ⁱˊ r3) {
        this.f9172 = z;
        this.f9174 = r3;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        this.f9174.getClass();
        Rect rect = this.f9173;
        ((C2535) obj).m5679(rect);
        Rect rect2 = this.f9175;
        ((C2535) obj2).m5679(rect2);
        int i = rect.top;
        int i2 = rect2.top;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        int i3 = rect.left;
        int i4 = rect2.left;
        boolean z = this.f9172;
        if (i3 < i4) {
            return z ? 1 : -1;
        }
        if (i3 > i4) {
            return z ? -1 : 1;
        }
        int i5 = rect.bottom;
        int i6 = rect2.bottom;
        if (i5 < i6) {
            return -1;
        }
        if (i5 > i6) {
            return 1;
        }
        int i7 = rect.right;
        int i8 = rect2.right;
        if (i7 < i8) {
            return z ? 1 : -1;
        }
        if (i7 > i8) {
            return z ? -1 : 1;
        }
        return 0;
    }
}
