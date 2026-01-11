package p425;

import android.content.Context;
import android.content.IntentFilter;
import android.util.SparseArray;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p017.C0968;
import p017.C0987;
import p055.C1471;
import p305.AbstractC3712;
import p384.C4603;

/* renamed from: ﹶ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5049 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C5049 f18991 = new C5049(AbstractC0993.m3260(C5050.f18996));

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C0956 f18992;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C0987 f18993;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f18994;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SparseArray f18995 = new SparseArray();

    static {
        Object[] objArr = {2, 5, 6};
        AbstractC1004.m3293(3, objArr);
        f18992 = AbstractC0993.m3259(3, objArr);
        ʽﹳ r0 = new ʽﹳ(4);
        r0.ʼʼ(5, 6);
        r0.ʼʼ(17, 6);
        r0.ʼʼ(7, 6);
        r0.ʼʼ(30, 10);
        r0.ʼʼ(18, 6);
        r0.ʼʼ(6, 8);
        r0.ʼʼ(8, 8);
        r0.ʼʼ(14, 8);
        f18993 = r0.ˑﹳ();
    }

    public C5049(C0956 c0956) {
        for (int i = 0; i < c0956.f3903; i++) {
            C5050 c5050 = (C5050) c0956.get(i);
            this.f18995.put(c5050.f18999, c5050);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f18995.size(); i3++) {
            i2 = Math.max(i2, ((C5050) this.f18995.valueAt(i3)).f18998);
        }
        this.f18994 = i2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C5049 m9954(Context context, C1471 c1471, C4603 c4603) {
        return m9955(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), c1471, c4603);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00fe, code lost:
    
        if (r0.equals("Xiaomi") == false) goto L53;
     */
    /* JADX WARN: Type inference failed for: r0v2, types: [ʼʻ.ʽʽ, ʼʻ.ˆﾞ] */
    /* JADX WARN: Type inference failed for: r14v6, types: [ʼʻ.ʽʽ, ʼʻ.ˆﾞ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p425.C5049 m9955(android.content.Context r11, android.content.Intent r12, p055.C1471 r13, p384.C4603 r14) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5049.m9955(android.content.Context, android.content.Intent, ʽⁱ.ˑﹳ, ⁱʽ.ﹳٴ):ﹶ.ⁱˊ");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C0956 m9956(int[] iArr, int i) {
        C0968 m3261 = AbstractC0993.m3261();
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i2 : iArr) {
            m3261.m3239(new C5050(i2, i));
        }
        return m3261.m3249();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5049)) {
            return false;
        }
        C5049 c5049 = (C5049) obj;
        return AbstractC3712.m7773(this.f18995, c5049.f18995) && this.f18994 == c5049.f18994;
    }

    public final int hashCode() {
        return (AbstractC3712.m7800(this.f18995) * 31) + this.f18994;
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f18994 + ", audioProfiles=" + this.f18995 + "]";
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ca, code lost:
    
        if (r9 != 5) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e5 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e7  */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair m9957(p055.C1471 r14, p055.C1495 r15) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5049.m9957(ʽⁱ.ˑﹳ, ʽⁱ.ﹳᐧ):android.util.Pair");
    }
}
