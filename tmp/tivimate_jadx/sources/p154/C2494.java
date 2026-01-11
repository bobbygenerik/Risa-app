package p154;

import p033.AbstractC1179;
import p173.C2656;

/* renamed from: ˊʾ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2494 extends AbstractC1179 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public byte[] f9507;

    @Override // p033.AbstractC1179
    /* renamed from: ˋˊ */
    public final void mo3694(C2656 c2656) {
        c2656.m6414(2);
        int m6406 = c2656.f10939.m6406(c2656);
        int m6418 = c2656.m6418();
        if (m6406 > 0) {
            c2656.f10937 = m6406;
            byte[] bArr = new byte[m6418];
            c2656.m6411(m6418, bArr);
            this.f9507 = bArr;
        }
    }
}
