package p311;

import androidx.leanback.widget.ʻٴ;
import java.util.ArrayList;
import java.util.regex.Pattern;
import p027.C1084;
import p035.AbstractC1220;
import p082.AbstractC1719;
import p121.AbstractC2026;
import p170.C2617;
import p208.AbstractC2944;
import p208.C2940;
import p208.C2950;
import p208.C2953;
import p208.C2955;
import p208.C2968;
import p435.C5140;
import ᵢ.ﹳٴ;
import ﹶﾞ.ⁱי;

/* renamed from: ᐧᵢ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3813 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ﹳٴ f14785;

    /* renamed from: ʽ, reason: contains not printable characters */
    public String f14786;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ⁱי f14787;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C2617 f14788;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ʻٴ f14789 = new ʻٴ(8);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public AbstractC2944 f14790;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C2968 f14791;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean f14792;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2940 f14793;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14794;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1084 f14795;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final char[] f14784 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final Pattern f14783 = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    public C3813(String str, C2940 c2940, String str2, C2950 c2950, C2968 c2968, boolean z, boolean z2, boolean z3) {
        this.f14794 = str;
        this.f14793 = c2940;
        this.f14786 = str2;
        this.f14791 = c2968;
        this.f14792 = z;
        if (c2950 != null) {
            this.f14795 = c2950.m6482();
        } else {
            this.f14795 = new C1084(3);
        }
        if (z2) {
            this.f14787 = new ⁱי(27);
            return;
        }
        if (z3) {
            ﹳٴ r1 = new ﹳٴ(11);
            this.f14785 = r1;
            C2968 c29682 = C2953.f11251;
            if (c29682.f11344.equals("multipart")) {
                r1.ʽʽ = c29682;
            } else {
                throw new IllegalArgumentException(("multipart != " + c29682).toString());
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7988(C2950 c2950, AbstractC2944 abstractC2944) {
        ﹳٴ r0 = this.f14785;
        r0.getClass();
        if (c2950.m6485("Content-Type") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Type");
        }
        if (c2950.m6485("Content-Length") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }
        ((ArrayList) r0.ˈٴ).add(new C2955(c2950, abstractC2944));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7989(String str, String str2, boolean z) {
        C2617 c2617;
        String str3 = this.f14786;
        if (str3 != null) {
            C2940 c2940 = this.f14793;
            c2940.getClass();
            try {
                c2617 = new C2617();
                c2617.m5874(c2940, str3);
            } catch (IllegalArgumentException unused) {
                c2617 = null;
            }
            this.f14788 = c2617;
            if (c2617 == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + c2940 + ", Relative: " + this.f14786);
            }
            this.f14786 = null;
        }
        if (z) {
            C2617 c26172 = this.f14788;
            if (((ArrayList) c26172.f9917) == null) {
                c26172.f9917 = new ArrayList();
            }
            ((ArrayList) c26172.f9917).add(AbstractC1719.m4659(str, 0, 0, " \"'<>#&=", 83));
            ((ArrayList) c26172.f9917).add(str2 != null ? AbstractC1719.m4659(str2, 0, 0, " \"'<>#&=", 83) : null);
            return;
        }
        C2617 c26173 = this.f14788;
        if (((ArrayList) c26173.f9917) == null) {
            c26173.f9917 = new ArrayList();
        }
        ((ArrayList) c26173.f9917).add(AbstractC1719.m4659(str, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", 91));
        ((ArrayList) c26173.f9917).add(str2 != null ? AbstractC1719.m4659(str2, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", 91) : null);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7990(String str, String str2, boolean z) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                C5140 c5140 = C2968.f11341;
                this.f14791 = AbstractC2026.m5063(str2);
                return;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException(AbstractC1220.m3771("Malformed content type: ", str2), e);
            }
        }
        C1084 c1084 = this.f14795;
        if (!z) {
            c1084.m3437(str, str2);
            return;
        }
        c1084.getClass();
        AbstractC2026.m5060(str);
        AbstractC2026.m5040(c1084, str, str2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7991(String str, String str2, boolean z) {
        ⁱי r0 = this.f14787;
        if (z) {
            ((ArrayList) r0.ᴵˊ).add(AbstractC1719.m4658(str, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", true, false, true, false, 83));
            ((ArrayList) r0.ʽʽ).add(AbstractC1719.m4658(str2, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", true, false, true, false, 83));
        } else {
            ((ArrayList) r0.ᴵˊ).add(AbstractC1719.m4658(str, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, 91));
            ((ArrayList) r0.ʽʽ).add(AbstractC1719.m4658(str2, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, 91));
        }
    }
}
