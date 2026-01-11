package p000;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.media3.exoplayer.dash.DashMediaSource$Factory;
import androidx.media3.exoplayer.hls.HlsMediaSource$Factory;
import androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory;
import ar.tvplayer.core.domain.ʽﹳ;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.Executor;
import p000.C0754;
import p012.C0894;
import p027.C1090;
import p095.InterfaceC1882;
import p123.C2127;
import p150.InterfaceC2417;
import p171.C2631;
import p229.C3125;
import p246.InterfaceC3291;
import p307.AbstractC3740;
import p320.AbstractC3943;
import p320.AbstractC3944;
import p320.EnumC3945;
import p392.C4661;
import p395.InterfaceC4721;
import p420.InterfaceC4937;
import ˋⁱ.ﾞᴵ;
import ـˎ.ˈ;

/* renamed from: ʻʻ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0754 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f3116;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f3117;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Serializable f3118;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object f3119;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object f3120;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f3121;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f3122;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object f3123;

    /* JADX WARN: Multi-variable type inference failed */
    public C0754(AssetManager assetManager, Executor executor, InterfaceC0756 interfaceC0756, String str, File file) {
        this.f3122 = false;
        this.f3116 = executor;
        this.f3117 = interfaceC0756;
        this.f3121 = str;
        this.f3119 = file;
        int i = Build.VERSION.SDK_INT;
        Serializable serializable = null;
        serializable = null;
        if (i >= 24) {
            if (i < 31) {
                switch (i) {
                    case 24:
                    case 25:
                        serializable = AbstractC0757.f3134;
                        break;
                    case 26:
                        serializable = AbstractC0757.f3133;
                        break;
                    case 27:
                        serializable = AbstractC0757.f3137;
                        break;
                    case 28:
                    case 29:
                    case 30:
                        serializable = AbstractC0757.f3132;
                        break;
                }
            } else {
                serializable = AbstractC0757.f3131;
            }
        }
        this.f3118 = serializable;
    }

    public C0754(ʽﹳ r1, C2127 c2127, EnumC3945 enumC3945, C0754[] c0754Arr) {
        this.f3116 = r1;
        this.f3117 = c2127;
        this.f3118 = enumC3945;
        this.f3123 = c0754Arr;
        this.f3119 = c2127.f8311;
        int ordinal = enumC3945.ordinal();
        if (c0754Arr != null) {
            C0754 c0754 = c0754Arr[ordinal];
            if (c0754 == null && c0754 == this) {
                return;
            }
            c0754Arr[ordinal] = this;
        }
    }

    public C0754(C2631 c2631, ﾞᴵ r2) {
        this.f3116 = c2631;
        this.f3119 = r2;
        this.f3117 = new HashMap();
        this.f3118 = new HashMap();
        this.f3122 = true;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m2743(String str) {
        int i;
        C1090 c1090 = (C1090) ((ʽﹳ) this.f3116).ᴵˊ;
        c1090.m3461(c1090.f4254, str.length() + 2);
        char[] cArr = (char[]) c1090.f4252;
        int i2 = c1090.f4254;
        int i3 = i2 + 1;
        cArr[i2] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, i3);
        int i4 = length + i3;
        int i5 = i3;
        while (i5 < i4) {
            char c = cArr[i5];
            byte[] bArr = AbstractC3944.f15241;
            if (c < bArr.length && bArr[c] != 0) {
                int length2 = str.length();
                for (int i6 = i5 - i3; i6 < length2; i6++) {
                    c1090.m3461(i5, 2);
                    char charAt = str.charAt(i6);
                    byte[] bArr2 = AbstractC3944.f15241;
                    if (charAt < bArr2.length) {
                        byte b = bArr2[charAt];
                        if (b == 0) {
                            i = i5 + 1;
                            ((char[]) c1090.f4252)[i5] = charAt;
                        } else {
                            if (b == 1) {
                                String str2 = AbstractC3944.f15242[charAt];
                                c1090.m3461(i5, str2.length());
                                str2.getChars(0, str2.length(), (char[]) c1090.f4252, i5);
                                int length3 = str2.length() + i5;
                                c1090.f4254 = length3;
                                i5 = length3;
                            } else {
                                char[] cArr2 = (char[]) c1090.f4252;
                                cArr2[i5] = '\\';
                                cArr2[i5 + 1] = (char) b;
                                i5 += 2;
                                c1090.f4254 = i5;
                            }
                        }
                    } else {
                        i = i5 + 1;
                        ((char[]) c1090.f4252)[i5] = charAt;
                    }
                    i5 = i;
                }
                c1090.m3461(i5, 1);
                ((char[]) c1090.f4252)[i5] = '\"';
                c1090.f4254 = i5 + 1;
                return;
            }
            i5++;
        }
        cArr[i4] = '\"';
        c1090.f4254 = i4 + 1;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m2744(int i) {
        if (this.f3122) {
            m2743(String.valueOf(i));
        } else {
            ((C1090) ((ʽﹳ) this.f3116).ᴵˊ).m3467(String.valueOf(i));
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public void m2745() {
        EnumC3945 enumC3945 = (EnumC3945) this.f3118;
        ʽﹳ r1 = (ʽﹳ) this.f3116;
        r1.getClass();
        r1.ʾˋ = false;
        r1.ʼˎ(enumC3945.f15250);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m2746(long j) {
        if (this.f3122) {
            m2743(String.valueOf(j));
        } else {
            ((C1090) ((ʽﹳ) this.f3116).ᴵˊ).m3467(String.valueOf(j));
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public void m2747(int i, Serializable serializable) {
        ((Executor) this.f3116).execute(new RunnableC0761(this, i, serializable, 0));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m2748() {
        ((C1090) ((ʽﹳ) this.f3116).ᴵˊ).m3467("null");
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public InterfaceC4937 m2749(int i) {
        InterfaceC1882 interfaceC1882;
        InterfaceC1882 c4661;
        HashMap hashMap = (HashMap) this.f3118;
        InterfaceC4937 interfaceC4937 = (InterfaceC4937) hashMap.get(Integer.valueOf(i));
        if (interfaceC4937 != null) {
            return interfaceC4937;
        }
        HashMap hashMap2 = (HashMap) this.f3117;
        InterfaceC1882 interfaceC18822 = (InterfaceC1882) hashMap2.get(Integer.valueOf(i));
        if (interfaceC18822 == null) {
            final C3125 c3125 = (C3125) this.f3123;
            c3125.getClass();
            if (i == 0) {
                final Class asSubclass = DashMediaSource$Factory.class.asSubclass(InterfaceC4937.class);
                final int i2 = 0;
                interfaceC1882 = new InterfaceC1882() { // from class: ﹳᵢ.ˉʿ
                    @Override // p095.InterfaceC1882
                    public final Object get() {
                        switch (i2) {
                            case 0:
                                return C4982.m9834((Class) asSubclass, c3125);
                            case 1:
                                return C4982.m9834((Class) asSubclass, c3125);
                            case 2:
                                return C4982.m9834((Class) asSubclass, c3125);
                            default:
                                return new C4959(c3125, (C2631) ((C0754) asSubclass).f3116);
                        }
                    }
                };
            } else if (i == 1) {
                final Class asSubclass2 = SsMediaSource$Factory.class.asSubclass(InterfaceC4937.class);
                final int i3 = 1;
                interfaceC1882 = new InterfaceC1882() { // from class: ﹳᵢ.ˉʿ
                    @Override // p095.InterfaceC1882
                    public final Object get() {
                        switch (i3) {
                            case 0:
                                return C4982.m9834((Class) asSubclass2, c3125);
                            case 1:
                                return C4982.m9834((Class) asSubclass2, c3125);
                            case 2:
                                return C4982.m9834((Class) asSubclass2, c3125);
                            default:
                                return new C4959(c3125, (C2631) ((C0754) asSubclass2).f3116);
                        }
                    }
                };
            } else if (i != 2) {
                if (i == 3) {
                    c4661 = new C4661(3, RtspMediaSource$Factory.class.asSubclass(InterfaceC4937.class));
                } else {
                    if (i != 4) {
                        throw new IllegalArgumentException(AbstractC3740.m7932(i, "Unrecognized contentType: "));
                    }
                    final int i4 = 3;
                    c4661 = new InterfaceC1882() { // from class: ﹳᵢ.ˉʿ
                        @Override // p095.InterfaceC1882
                        public final Object get() {
                            switch (i4) {
                                case 0:
                                    return C4982.m9834((Class) this, c3125);
                                case 1:
                                    return C4982.m9834((Class) this, c3125);
                                case 2:
                                    return C4982.m9834((Class) this, c3125);
                                default:
                                    return new C4959(c3125, (C2631) ((C0754) this).f3116);
                            }
                        }
                    };
                }
                interfaceC18822 = c4661;
                hashMap2.put(Integer.valueOf(i), interfaceC18822);
            } else {
                final Class asSubclass3 = HlsMediaSource$Factory.class.asSubclass(InterfaceC4937.class);
                final int i5 = 2;
                interfaceC1882 = new InterfaceC1882() { // from class: ﹳᵢ.ˉʿ
                    @Override // p095.InterfaceC1882
                    public final Object get() {
                        switch (i5) {
                            case 0:
                                return C4982.m9834((Class) asSubclass3, c3125);
                            case 1:
                                return C4982.m9834((Class) asSubclass3, c3125);
                            case 2:
                                return C4982.m9834((Class) asSubclass3, c3125);
                            default:
                                return new C4959(c3125, (C2631) ((C0754) asSubclass3).f3116);
                        }
                    }
                };
            }
            interfaceC18822 = interfaceC1882;
            hashMap2.put(Integer.valueOf(i), interfaceC18822);
        }
        InterfaceC4937 interfaceC49372 = (InterfaceC4937) interfaceC18822.get();
        InterfaceC4721 interfaceC4721 = (InterfaceC4721) this.f3121;
        if (interfaceC4721 != null) {
            interfaceC49372.mo789(interfaceC4721);
        }
        C0894 c0894 = (C0894) this.f3120;
        if (c0894 != null) {
            interfaceC49372.mo790(c0894);
        }
        interfaceC49372.mo793((ﾞᴵ) this.f3119);
        interfaceC49372.mo792(this.f3122);
        interfaceC49372.mo791();
        hashMap.put(Integer.valueOf(i), interfaceC49372);
        return interfaceC49372;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m2750(InterfaceC2417 interfaceC2417, int i, InterfaceC3291 interfaceC3291, Object obj) {
        m2753(interfaceC2417, i);
        m2752(interfaceC3291, obj);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean m2751() {
        ((ˈ) this.f3119).getClass();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2752(p246.InterfaceC3291 r5, java.lang.Object r6) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.f3117
            ˈˎ.ﹳٴ r0 = (p123.C2127) r0
            ـˎ.ˈ r0 = r0.f8311
            r0.getClass()
            r1 = 3
            int r1 = p010.AbstractC0844.m3018(r1)
            if (r1 == 0) goto L5e
            r2 = 1
            if (r1 == r2) goto L1d
            r0 = 2
            if (r1 != r0) goto L17
            goto L5e
        L17:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        L1d:
            ˉﾞ.ˈ r1 = r5.mo4337()
            ᴵˋ.ˊʻ r1 = r1.mo5520()
            ˉﾞ.ﾞᴵ r2 = p150.C2422.f9351
            boolean r2 = p152.AbstractC2444.m5562(r1, r2)
            if (r2 != 0) goto L35
            ˉﾞ.ﾞᴵ r2 = p150.C2422.f9354
            boolean r1 = p152.AbstractC2444.m5562(r1, r2)
            if (r1 == 0) goto L5e
        L35:
            ˉﾞ.ˈ r1 = r5.mo4337()
            java.util.List r1 = r1.getAnnotations()
            java.util.Iterator r1 = r1.iterator()
        L41:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L58
            java.lang.Object r2 = r1.next()
            java.lang.annotation.Annotation r2 = (java.lang.annotation.Annotation) r2
            boolean r3 = r2 instanceof p123.InterfaceC2126
            if (r3 == 0) goto L41
            ˈˎ.ⁱˊ r2 = (p123.InterfaceC2126) r2
            java.lang.String r0 = r2.discriminator()
            goto L5f
        L58:
            r0.getClass()
            java.lang.String r0 = "type"
            goto L5f
        L5e:
            r0 = 0
        L5f:
            if (r0 == 0) goto L6d
            ˉﾞ.ˈ r1 = r5.mo4337()
            java.lang.String r1 = r1.mo5525()
            r4.f3121 = r0
            r4.f3120 = r1
        L6d:
            r5.mo4339(r4, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C0754.m2752(יʼ.ﹳٴ, java.lang.Object):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m2753(InterfaceC2417 interfaceC2417, int i) {
        ʽﹳ r0 = (ʽﹳ) this.f3116;
        int ordinal = ((EnumC3945) this.f3118).ordinal();
        boolean z = true;
        if (ordinal == 1) {
            if (!r0.ʾˋ) {
                r0.ʼˎ(',');
            }
            r0.ᵔᵢ();
            return;
        }
        if (ordinal == 2) {
            if (r0.ʾˋ) {
                this.f3122 = true;
                r0.ᵔᵢ();
                return;
            }
            if (i % 2 == 0) {
                r0.ʼˎ(',');
                r0.ᵔᵢ();
            } else {
                r0.ʼˎ(':');
                r0.ٴﹶ();
                z = false;
            }
            this.f3122 = z;
            return;
        }
        if (ordinal != 3) {
            if (!r0.ʾˋ) {
                r0.ʼˎ(',');
            }
            r0.ᵔᵢ();
            AbstractC3943.m8121((C2127) this.f3117, interfaceC2417);
            m2743(interfaceC2417.mo5523(i));
            r0.ʼˎ(':');
            r0.ٴﹶ();
            return;
        }
        if (i == 0) {
            this.f3122 = true;
        }
        if (i == 1) {
            r0.ʼˎ(',');
            r0.ٴﹶ();
            this.f3122 = false;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C0754 m2754(InterfaceC2417 interfaceC2417) {
        C0754 c0754;
        C0754[] c0754Arr = (C0754[]) this.f3123;
        C2127 c2127 = (C2127) this.f3117;
        EnumC3945 m8118 = AbstractC3943.m8118(c2127, interfaceC2417);
        char c = m8118.f15249;
        ʽﹳ r4 = (ʽﹳ) this.f3116;
        r4.ʼˎ(c);
        r4.ʾˋ = true;
        String str = (String) this.f3121;
        if (str != null) {
            String str2 = (String) this.f3120;
            if (str2 == null) {
                str2 = interfaceC2417.mo5525();
            }
            r4.ᵔᵢ();
            m2743(str);
            r4.ʼˎ(':');
            m2743(str2);
            this.f3121 = null;
            this.f3120 = null;
        }
        return ((EnumC3945) this.f3118) == m8118 ? this : (c0754Arr == null || (c0754 = c0754Arr[m8118.ordinal()]) == null) ? new C0754(r4, c2127, m8118, c0754Arr) : c0754;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public FileInputStream m2755(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message == null || !message.contains("compressed")) {
                return null;
            }
            ((InterfaceC0756) this.f3117).m2759();
            return null;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m2756(InterfaceC2417 interfaceC2417, int i, InterfaceC3291 interfaceC3291, Object obj) {
        if (obj == null) {
            ((ˈ) this.f3119).getClass();
        }
        m2753(interfaceC2417, i);
        if (interfaceC3291.mo4337().mo5524()) {
            m2752(interfaceC3291, obj);
        } else if (obj == null) {
            m2748();
        } else {
            m2752(interfaceC3291, obj);
        }
    }
}
