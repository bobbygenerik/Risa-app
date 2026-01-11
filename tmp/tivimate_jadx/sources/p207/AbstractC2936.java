package p207;

import j$.util.Objects;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Set;
import p035.AbstractC1220;
import p366.C4476;
import ʽⁱ.ᵎﹶ;
import ﹳˋ.ʼˎ;

/* renamed from: ˎᵔ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2936 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C2932 f11106;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final C2932 f11107;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final C2932 f11108;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final HashMap f11109;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final C2932 f11110;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C2932 f11111;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C2932 f11112;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final C2932 f11113;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C2932 f11114;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Set f11115;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final EnumC2935 f11116;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f11117;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final EnumC2933 f11118;

    static {
        HashMap hashMap = new HashMap();
        f11109 = hashMap;
        EnumC2935 enumC2935 = EnumC2935.f11104;
        C2932 c2932 = new C2932(1, enumC2935, 0);
        f11114 = c2932;
        C2932 c29322 = new C2932(2, enumC2935, 1);
        f11111 = c29322;
        EnumC2935 enumC29352 = EnumC2935.f11102;
        EnumSet of = EnumSet.of(enumC2935, enumC29352);
        EnumC2933 enumC2933 = EnumC2933.f11098;
        C2932 c29323 = new C2932(enumC2933, 3, enumC2935, of);
        C2932 c29324 = new C2932(enumC2933, 4, EnumSet.of(enumC2935, enumC29352));
        f11112 = c29324;
        C2932 c29325 = new C2932(5, enumC2935, 4);
        f11106 = c29325;
        C2932 c29326 = new C2932(6, enumC2935, 5);
        f11107 = c29326;
        C2932 c29327 = new C2932(10, enumC2935, 6);
        f11110 = c29327;
        C2932 c29328 = new C2932(17, enumC29352, 7);
        f11113 = c29328;
        C2932 c29329 = new C2932(16, enumC29352, 8);
        f11108 = c29329;
        hashMap.put(1, c2932);
        hashMap.put(2, c29322);
        hashMap.put(3, c29323);
        hashMap.put(4, c29324);
        hashMap.put(5, c29325);
        hashMap.put(6, c29326);
        hashMap.put(10, c29327);
        hashMap.put(17, c29328);
        hashMap.put(16, c29329);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC2936(p207.EnumC2933 r3, int r4, java.util.EnumSet r5) {
        /*
            r2 = this;
            ˎᵔ.ﹳٴ r0 = p207.EnumC2935.f11104
            boolean r1 = r5.contains(r0)
            if (r1 == 0) goto L9
            goto Lb
        L9:
            ˎᵔ.ﹳٴ r0 = p207.EnumC2935.f11102
        Lb:
            r2.<init>(r3, r4, r0, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p207.AbstractC2936.<init>(ˎᵔ.ᵎﹶ, int, java.util.EnumSet):void");
    }

    public AbstractC2936(EnumC2933 enumC2933, int i, EnumC2935 enumC2935, Set set) {
        this.f11118 = enumC2933;
        this.f11117 = i;
        this.f11115 = set;
        this.f11116 = enumC2935;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static AbstractC2936 m6461(EnumC2933 enumC2933, int i) {
        int ordinal = enumC2933.ordinal();
        HashMap hashMap = f11109;
        if (ordinal == 0) {
            for (AbstractC2936 abstractC2936 : hashMap.values()) {
                if (abstractC2936.f11117 == i && enumC2933 == abstractC2936.f11118) {
                    return abstractC2936;
                }
            }
        } else if (ordinal == 1 || ordinal == 2 || ordinal == 3) {
            return new AbstractC2936(enumC2933, i, EnumSet.of(EnumC2935.f11104, EnumC2935.f11102));
        }
        throw new RuntimeException(String.format("Unknown ASN.1 tag '%s:%s' found (%s)", enumC2933, Integer.valueOf(i), hashMap));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            AbstractC2936 abstractC2936 = (AbstractC2936) obj;
            if (this.f11117 == abstractC2936.f11117 && this.f11118 == abstractC2936.f11118 && this.f11116 == abstractC2936.f11116) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f11118, Integer.valueOf(this.f11117), this.f11116);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ASN1Tag[");
        sb.append(this.f11118);
        sb.append(",");
        sb.append(this.f11116);
        sb.append(",");
        return AbstractC1220.m3784(sb, this.f11117, ']');
    }

    /* renamed from: ʽ */
    public abstract ᵎﹶ mo6458(ʼˎ r1);

    /* renamed from: ˈ */
    public abstract ᵎﹶ mo6459(C4476 c4476);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC2936 m6462(EnumC2935 enumC2935) {
        if (this.f11116 == enumC2935) {
            return this;
        }
        if (this.f11115.contains(enumC2935)) {
            return new C2930(this, this.f11118, this.f11117, enumC2935, this.f11115);
        }
        throw new IllegalArgumentException(String.format("The ASN.1 tag %s does not support encoding as %s", this, enumC2935));
    }
}
