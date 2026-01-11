package p052;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import p010.AbstractC0844;
import ﹶﾞ.ⁱי;

/* renamed from: ʽᴵ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1413 implements Closeable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public String[] f5523;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f5524;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int[] f5525;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int[] f5526;

    /* renamed from: ʽ */
    public abstract void mo4122();

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final void m4150(String str) {
        StringBuilder m3017 = AbstractC0844.m3017(str, " at path ");
        m3017.append(m4151());
        throw new IOException(m3017.toString());
    }

    /* renamed from: ʾˋ */
    public abstract boolean mo4125();

    /* renamed from: ʿᵢ */
    public abstract int mo4127();

    /* renamed from: ˈʿ */
    public abstract void mo4128();

    /* renamed from: ˈٴ */
    public abstract double mo4129();

    /* renamed from: ˉˆ */
    public abstract void mo4130();

    /* renamed from: ˊᵔ */
    public abstract int mo4131(ⁱי r1);

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final String m4151() {
        return AbstractC1414.m4153(this.f5524, this.f5526, this.f5523, this.f5525);
    }

    /* renamed from: ـᵎ */
    public abstract void mo4136();

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final void m4152(int i) {
        int i2 = this.f5524;
        int[] iArr = this.f5526;
        if (i2 == iArr.length) {
            if (i2 == 256) {
                throw new RuntimeException("Nesting too deep at " + m4151());
            }
            this.f5526 = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f5523;
            this.f5523 = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f5525;
            this.f5525 = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f5526;
        int i3 = this.f5524;
        this.f5524 = i3 + 1;
        iArr3[i3] = i;
    }

    /* renamed from: ᴵˑ */
    public abstract String mo4139();

    /* renamed from: ᵎˊ */
    public abstract int mo4140();

    /* renamed from: ᵎﹶ */
    public abstract void mo4141();

    /* renamed from: ﹳᐧ */
    public abstract void mo4143();

    /* renamed from: ﹶᐧ */
    public abstract void mo4144();
}
