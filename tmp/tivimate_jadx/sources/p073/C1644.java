package p073;

import android.content.Context;
import androidx.leanback.widget.ʻٴ;
import p062.C1577;
import p075.C1652;
import p075.C1654;
import p139.AbstractC2361;
import p139.C2359;
import p183.C2760;
import p229.C3125;
import p262.C3433;
import p343.InterfaceC4267;
import ˊⁱ.ˑﹳ;
import ᐧﹳ.ʽ;
import ᵢ.ﹳٴ;

/* renamed from: ʾⁱ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1644 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Context f6687;

    public /* synthetic */ C1644(Context context) {
        this.f6687 = context;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        if (android.os.Build.VERSION.SDK_INT >= 26) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007a, code lost:
    
        if (android.os.Build.VERSION.SDK_INT >= 34) goto L45;
     */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m4504(p055.C1495 r5) {
        /*
            java.lang.String r0 = r5.f5930
            r1 = 0
            if (r0 == 0) goto L86
            boolean r0 = p055.AbstractC1464.m4255(r0)
            if (r0 != 0) goto Ld
            goto L86
        Ld:
            java.lang.String r5 = r5.f5930
            java.lang.String r0 = p305.AbstractC3712.f14481
            r5.getClass()
            int r0 = r5.hashCode()
            r2 = 4
            r3 = 1
            r4 = -1
            switch(r0) {
                case -1487656890: goto L61;
                case -1487464693: goto L56;
                case -1487464690: goto L4b;
                case -1487394660: goto L40;
                case -1487018032: goto L35;
                case -879272239: goto L2a;
                case -879258763: goto L1f;
                default: goto L1e;
            }
        L1e:
            goto L6b
        L1f:
            java.lang.String r0 = "image/png"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L28
            goto L6b
        L28:
            r4 = 6
            goto L6b
        L2a:
            java.lang.String r0 = "image/bmp"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L33
            goto L6b
        L33:
            r4 = 5
            goto L6b
        L35:
            java.lang.String r0 = "image/webp"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L3e
            goto L6b
        L3e:
            r4 = r2
            goto L6b
        L40:
            java.lang.String r0 = "image/jpeg"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L49
            goto L6b
        L49:
            r4 = 3
            goto L6b
        L4b:
            java.lang.String r0 = "image/heif"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L54
            goto L6b
        L54:
            r4 = 2
            goto L6b
        L56:
            java.lang.String r0 = "image/heic"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L5f
            goto L6b
        L5f:
            r4 = r3
            goto L6b
        L61:
            java.lang.String r0 = "image/avif"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L6a
            goto L6b
        L6a:
            r4 = r1
        L6b:
            switch(r4) {
                case 0: goto L76;
                case 1: goto L6f;
                case 2: goto L6f;
                case 3: goto L7c;
                case 4: goto L7c;
                case 5: goto L7c;
                case 6: goto L7c;
                default: goto L6e;
            }
        L6e:
            goto L81
        L6f:
            int r5 = android.os.Build.VERSION.SDK_INT
            r0 = 26
            if (r5 < r0) goto L81
            goto L7c
        L76:
            int r5 = android.os.Build.VERSION.SDK_INT
            r0 = 34
            if (r5 < r0) goto L81
        L7c:
            int r5 = p307.AbstractC3740.m7927(r2, r1, r1, r1)
            return r5
        L81:
            int r5 = p307.AbstractC3740.m7927(r3, r1, r1, r1)
            return r5
        L86:
            int r5 = p307.AbstractC3740.m7927(r1, r1, r1, r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p073.C1644.m4504(ʽⁱ.ﹳᐧ):int");
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [ˉˋ.ˆʾ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2359 m4505() {
        Context context = this.f6687;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        ?? obj = new Object();
        obj.f9122 = C1654.m4514(AbstractC2361.f9130);
        C1652 c1652 = new C1652(0, context);
        obj.f9125 = c1652;
        obj.f9121 = C1654.m4514(new C3125(c1652, 26, new ʽ(15, c1652)));
        C1652 c16522 = obj.f9125;
        obj.f9123 = new ˑﹳ(26, c16522);
        InterfaceC4267 m4514 = C1654.m4514(new C3433(obj.f9123, 10, C1654.m4514(new C1577(c16522, 1))));
        obj.f9126 = m4514;
        Object obj2 = new Object();
        C1652 c16523 = obj.f9125;
        ﹳٴ r6 = new ﹳٴ(c16523, m4514, obj2, 10, false);
        InterfaceC4267 interfaceC4267 = obj.f9122;
        InterfaceC4267 interfaceC42672 = obj.f9121;
        obj.f9124 = C1654.m4514(new ﹳٴ(new ʻٴ(interfaceC4267, interfaceC42672, r6, m4514, m4514, 7), new C2760(c16523, interfaceC42672, m4514, r6, interfaceC4267, m4514, m4514, 3), new ˏˆ.ﹳٴ(interfaceC4267, m4514, r6, m4514, 28), 9, false));
        return obj;
    }
}
