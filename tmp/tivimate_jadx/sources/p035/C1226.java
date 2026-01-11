package p035;

import java.util.Collections;
import java.util.Set;
import p430.C5113;

/* renamed from: ʼﾞ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1226 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String[] f4737;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Set f4738;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int[] f4739;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1200 f4740;

    public C1226(AbstractC1200 abstractC1200, int[] iArr, String[] strArr) {
        this.f4740 = abstractC1200;
        this.f4739 = iArr;
        this.f4737 = strArr;
        if (iArr.length != strArr.length) {
            throw new IllegalStateException("Check failed.");
        }
        this.f4738 = !(strArr.length == 0) ? Collections.singleton(strArr[0]) : C5113.f19217;
    }
}
