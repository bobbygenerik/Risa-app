package p078;

import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p033.C1181;
import p033.C1184;
import p154.C2494;
import p154.C2508;
import p154.EnumC2500;
import p173.InterfaceC2655;
import p410.AbstractC4859;
import p410.AbstractC4879;
import p410.C4863;
import p410.C4869;
import p410.InterfaceC4870;
import ʽⁱ.ᵎﹶ;

/* renamed from: ʿʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1678 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public byte[] f6797;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC4870 f6798 = AbstractC4859.m9669(C4869.class);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public AbstractC4879 f6799;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C1677 f6800;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C4863 f6801;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String f6802;

    public C1678(C1677 c1677, String str) {
        AbstractC4879 abstractC4879;
        this.f6800 = c1677;
        this.f6802 = str;
        m4567(true);
        while (true) {
            C4863 c4863 = this.f6801;
            if (c4863 == null) {
                abstractC4879 = null;
                break;
            } else {
                if (c4863.hasNext()) {
                    abstractC4879 = (AbstractC4879) this.f6801.next();
                    break;
                }
                m4567(false);
            }
        }
        this.f6799 = abstractC4879;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6799 != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        AbstractC4879 abstractC4879;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        AbstractC4879 abstractC48792 = this.f6799;
        while (true) {
            C4863 c4863 = this.f6801;
            if (c4863 == null) {
                abstractC4879 = null;
                break;
            }
            if (c4863.hasNext()) {
                abstractC4879 = (AbstractC4879) this.f6801.next();
                break;
            }
            m4567(false);
        }
        this.f6799 = abstractC4879;
        return abstractC48792;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4567(boolean z) {
        byte[] bArr;
        C1677 c1677 = this.f6800;
        C1671 c1671 = c1677.f6782;
        EnumSet of = z ? EnumSet.of(EnumC2500.f9524) : EnumSet.noneOf(EnumC2500.class);
        InterfaceC4870 interfaceC4870 = this.f6798;
        int mo9674 = interfaceC4870.mo9674();
        C1184 c1184 = c1677.f6779;
        C2494 c2494 = (C2494) c1671.m4569(new C2508(c1671.f6814, c1671.f6817, c1671.f6805, c1184, mo9674, of, this.f6802, c1671.f6811), "Query directory", c1184, AbstractC1679.f6804, c1671.f6815);
        long j = ((C1181) ((InterfaceC2655) ((ᵎﹶ) c2494).ʾˋ)).f4580;
        byte[] bArr2 = c2494.f9507;
        if (j == 2147483654L || j == 3221225487L || ((bArr = this.f6797) != null && Arrays.equals(bArr, bArr2))) {
            this.f6801 = null;
            this.f6797 = null;
        } else {
            this.f6797 = bArr2;
            HashMap hashMap = AbstractC4859.f18204;
            this.f6801 = new C4863(bArr2, interfaceC4870);
        }
    }
}
