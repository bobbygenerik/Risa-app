package p355;

import com.bumptech.glide.C0229;
import java.io.File;

/* renamed from: ᵔˆ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4338 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final File[] f16148;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final File[] f16149;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f16150;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ C4335 f16151;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long[] f16152;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f16153;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C0229 f16154;

    public C4338(C4335 c4335, String str) {
        this.f16151 = c4335;
        this.f16153 = str;
        int i = c4335.f16135;
        File file = c4335.f16129;
        this.f16152 = new long[i];
        this.f16148 = new File[i];
        this.f16149 = new File[i];
        StringBuilder sb = new StringBuilder(str);
        sb.append('.');
        int length = sb.length();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(i2);
            this.f16148[i2] = new File(file, sb.toString());
            sb.append(".tmp");
            this.f16149[i2] = new File(file, sb.toString());
            sb.setLength(length);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m8800() {
        StringBuilder sb = new StringBuilder();
        for (long j : this.f16152) {
            sb.append(' ');
            sb.append(j);
        }
        return sb.toString();
    }
}
