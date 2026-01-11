package p027;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Parcel;
import android.support.v4.media.session.AbstractC0001;
import android.view.View;
import androidx.media3.exoplayer.rtsp.RtspMediaSource$RtspPlaybackException;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.AbstractC0588;
import com.google.android.gms.internal.play_billing.C0536;
import com.google.android.gms.internal.play_billing.C0652;
import com.google.android.gms.internal.play_billing.InterfaceC0626;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import j$.util.DesugarCollections;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashMap;
import p031.C1144;
import p032.InterfaceC1153;
import p032.InterfaceC1163;
import p032.InterfaceC1171;
import p055.AbstractC1464;
import p055.C1495;
import p068.C1621;
import p080.InterfaceC1710;
import p095.InterfaceC1882;
import p127.C2161;
import p127.C2176;
import p152.AbstractC2444;
import p158.InterfaceC2539;
import p164.C2579;
import p171.C2651;
import p262.C3433;
import p296.AbstractC3659;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p319.C3936;
import p320.AbstractC3947;
import p320.C3946;
import p404.C4790;
import p404.C4799;
import p420.C4976;
import p420.InterfaceC4956;
import p421.C4996;
import p430.C5109;
import p444.InterfaceC5202;
import ﹶﾞ.ⁱי;

/* renamed from: ʼٴ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1090 implements InterfaceC1163, InterfaceC1153, InterfaceC4956, InterfaceC2539, InterfaceC5202 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f4252;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4253;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f4254;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C1090(byte b, int i) {
        this(32);
        this.f4253 = i;
        switch (i) {
            case 9:
                return;
            case 14:
                this.f4252 = Bitmap.CompressFormat.JPEG;
                this.f4254 = 100;
                return;
            default:
                this.f4252 = new C3732(8);
                return;
        }
    }

    public /* synthetic */ C1090(char c, int i) {
        this.f4253 = i;
    }

    public C1090(int i) {
        this.f4253 = 9;
        this.f4252 = new long[i];
    }

    public /* synthetic */ C1090(int i, int i2, Object obj) {
        this.f4253 = i2;
        this.f4252 = obj;
        this.f4254 = i;
    }

    public C1090(Context context) {
        this.f4253 = 2;
        this.f4252 = context;
        this.f4254 = 0;
    }

    public C1090(ʽﹳ r2) {
        this.f4253 = 8;
        this.f4254 = r2.ᴵˊ;
        this.f4252 = (InputStream) r2.ʽʽ;
        DesugarCollections.unmodifiableMap(new HashMap((HashMap) r2.ˈٴ));
    }

    public C1090(C3936 c3936, int i) {
        this.f4253 = 12;
        AbstractC3659.m7687(c3936);
        this.f4252 = c3936;
        this.f4254 = i;
    }

    public C1090(boolean z, boolean z2, boolean z3) {
        this.f4253 = 3;
        this.f4254 = (z || z2 || z3) ? 1 : 0;
    }

    public String toString() {
        switch (this.f4253) {
            case 10:
                return new String((char[]) this.f4252, 0, this.f4254);
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    @Override // p032.InterfaceC1163
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public InterfaceC1171 mo3457(C4799 c4799) {
        Context context;
        int i = Build.VERSION.SDK_INT;
        int i2 = this.f4254;
        if (i2 != 1 && (i2 != 0 || (i < 31 && ((context = (Context) this.f4252) == null || i < 28 || !context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen"))))) {
            return new Object().ʼˎ(c4799);
        }
        final int m4250 = AbstractC1464.m4250(((C1495) c4799.f18049).f5930);
        AbstractC3731.m7845("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + AbstractC3712.m7787(m4250));
        final int i3 = 0;
        final int i4 = 1;
        return new ⁱי(new InterfaceC1882() { // from class: ʼᵢ.ⁱˊ
            @Override // p095.InterfaceC1882
            public final Object get() {
                switch (i3) {
                    case 0:
                        return new HandlerThread(C1152.m3585(m4250, "ExoPlayer:MediaCodecAsyncAdapter:"));
                    default:
                        return new HandlerThread(C1152.m3585(m4250, "ExoPlayer:MediaCodecQueueingThread:"));
                }
            }
        }, new InterfaceC1882() { // from class: ʼᵢ.ⁱˊ
            @Override // p095.InterfaceC1882
            public final Object get() {
                switch (i4) {
                    case 0:
                        return new HandlerThread(C1152.m3585(m4250, "ExoPlayer:MediaCodecAsyncAdapter:"));
                    default:
                        return new HandlerThread(C1152.m3585(m4250, "ExoPlayer:MediaCodecQueueingThread:"));
                }
            }
        }, 8, false).ˆʾ(c4799);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public void m3458() {
        C3946 c3946 = C3946.f15251;
        char[] cArr = (char[]) this.f4252;
        synchronized (c3946) {
            int i = c3946.f397;
            if (cArr.length + i < AbstractC3947.f15252) {
                c3946.f397 = i + cArr.length;
                ((C5109) c3946.f396).addLast(cArr);
            }
        }
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo3459() {
        RtspMediaSource$RtspPlaybackException rtspMediaSource$RtspPlaybackException = ((C2161) this.f4252).f8420;
        if (rtspMediaSource$RtspPlaybackException != null) {
            throw rtspMediaSource$RtspPlaybackException;
        }
    }

    @Override // p032.InterfaceC1153
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean mo3460() {
        return true;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public void m3461(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = (char[]) this.f4252;
        if (cArr.length <= i3) {
            int i4 = i * 2;
            if (i3 < i4) {
                i3 = i4;
            }
            this.f4252 = Arrays.copyOf(cArr, i3);
        }
    }

    @Override // p158.InterfaceC2539
    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean mo3462(View view) {
        ((BottomSheetBehavior) this.f4252).m2345(this.f4254);
        return true;
    }

    @Override // p032.InterfaceC1153
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean mo3463(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long m3464(C2651 c2651) {
        C3732 c3732 = (C3732) this.f4252;
        int i = 0;
        c2651.mo4572(c3732.f14534, 0, 1, false);
        int i2 = c3732.f14534[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (~i3);
        c2651.mo4572(c3732.f14534, 1, i4, false);
        while (i < i4) {
            i++;
            i5 = (c3732.f14534[i] & 255) + (i5 << 8);
        }
        this.f4254 = i4 + 1 + this.f4254;
        return i5;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public String m3465(C0536 c0536) {
        int i = 5;
        switch (this.f4253) {
            case 0:
                C1089 c1089 = (C1089) this.f4252;
                int i2 = this.f4254;
                try {
                    if (c1089.f4247 == null) {
                        throw null;
                    }
                    InterfaceC0626 interfaceC0626 = c1089.f4247;
                    String packageName = c1089.f4249.getPackageName();
                    String str = i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? i2 != 6 ? "QUERY_PRODUCT_DETAILS_ASYNC" : "START_CONNECTION" : "IS_FEATURE_SUPPORTED" : "CONSUME_ASYNC" : "ACKNOWLEDGE_PURCHASE" : "LAUNCH_BILLING_FLOW";
                    BinderC1083 binderC1083 = new BinderC1083(c0536);
                    C0652 c0652 = (C0652) interfaceC0626;
                    Parcel m1307 = c0652.m1307();
                    m1307.writeString(packageName);
                    m1307.writeString(str);
                    int i3 = AbstractC0588.f2391;
                    m1307.writeStrongBinder(binderC1083);
                    try {
                        c0652.f1904.transact(1, m1307, null, 1);
                        m1307.recycle();
                        return "billingOverrideService.getBillingOverride";
                    } catch (Throwable th) {
                        m1307.recycle();
                        throw th;
                    }
                } catch (Exception e) {
                    c1089.m3455(95, 28, AbstractC1093.f4274);
                    AbstractC0542.m2091("BillingClientTesting", "An error occurred while retrieving billing override.", e);
                    c0536.m2080(0);
                    return "billingOverrideService.getBillingOverride";
                }
            default:
                C1111 c1111 = (C1111) this.f4252;
                c1111.m3509(new C4790(c1111, i, c0536), this.f4254);
                return "reconnectIfNeeded";
        }
    }

    @Override // p444.InterfaceC5202
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public InterfaceC1710 mo3466(InterfaceC1710 interfaceC1710, C1144 c1144) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) interfaceC1710.get()).compress((Bitmap.CompressFormat) this.f4252, this.f4254, byteArrayOutputStream);
        interfaceC1710.mo4404();
        return new C1621(byteArrayOutputStream.toByteArray());
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public void m3467(String str) {
        int length = str.length();
        if (length == 0) {
            return;
        }
        m3461(this.f4254, length);
        str.getChars(0, str.length(), (char[]) this.f4252, this.f4254);
        this.f4254 += length;
    }

    @Override // p032.InterfaceC1153
    /* renamed from: ـˆ, reason: contains not printable characters */
    public boolean mo3468(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long m3469(int i) {
        if (i >= 0 && i < this.f4254) {
            return ((long[]) this.f4252)[i];
        }
        StringBuilder m16 = AbstractC0001.m16(i, "Invalid index ", ", size is ");
        m16.append(this.f4254);
        throw new IndexOutOfBoundsException(m16.toString());
    }

    @Override // p032.InterfaceC1153
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public MediaCodecInfo mo3470(int i) {
        if (((MediaCodecInfo[]) this.f4252) == null) {
            this.f4252 = new MediaCodecList(this.f4254).getCodecInfos();
        }
        return ((MediaCodecInfo[]) this.f4252)[i];
    }

    @Override // p032.InterfaceC1153
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int mo3471() {
        if (((MediaCodecInfo[]) this.f4252) == null) {
            this.f4252 = new MediaCodecList(this.f4254).getCodecInfos();
        }
        return ((MediaCodecInfo[]) this.f4252).length;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int mo3472(C3433 c3433, C4996 c4996, int i) {
        C2161 c2161 = (C2161) this.f4252;
        int i2 = this.f4254;
        if (c2161.f8411) {
            return -3;
        }
        C2176 c2176 = (C2176) c2161.f8417.get(i2);
        return c2176.f8521.m9808(c3433, c4996, i, c2176.f8522);
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int mo3473(long j) {
        C2161 c2161 = (C2161) this.f4252;
        int i = this.f4254;
        if (c2161.f8411) {
            return -3;
        }
        C2176 c2176 = (C2176) c2161.f8417.get(i);
        C4976 c4976 = c2176.f8521;
        int m9804 = c4976.m9804(c2176.f8522, j);
        c4976.m9825(m9804);
        return m9804;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m3474(long j) {
        int i = this.f4254;
        long[] jArr = (long[]) this.f4252;
        if (i == jArr.length) {
            this.f4252 = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = (long[]) this.f4252;
        int i2 = this.f4254;
        this.f4254 = i2 + 1;
        jArr2[i2] = j;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean mo3475() {
        C2161 c2161 = (C2161) this.f4252;
        int i = this.f4254;
        if (c2161.f8411) {
            return false;
        }
        C2176 c2176 = (C2176) c2161.f8417.get(i);
        return c2176.f8521.m9811(c2176.f8522);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public void m3476(C2579 c2579) {
        C2579 c25792;
        int i = c2579.f9796;
        if (i == -1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i2 = this.f4254;
        C2579[] c2579Arr = (C2579[]) this.f4252;
        C2579 c25793 = c2579Arr[i2];
        c2579.f9796 = -1;
        c2579Arr[i2] = null;
        this.f4254 = i2 - 1;
        if (c2579 == c25793) {
            return;
        }
        int m5564 = AbstractC2444.m5564(0L, c25793.f9798 - c2579.f9798);
        if (m5564 == 0) {
            ((C2579[]) this.f4252)[i] = c25793;
            c25793.f9796 = i;
            return;
        }
        if (m5564 >= 0) {
            m3477(i, c25793);
            return;
        }
        while (true) {
            int i3 = i << 1;
            int i4 = i3 + 1;
            int i5 = this.f4254;
            if (i4 > i5) {
                if (i3 > i5) {
                    break;
                } else {
                    c25792 = ((C2579[]) this.f4252)[i3];
                }
            } else {
                C2579[] c2579Arr2 = (C2579[]) this.f4252;
                c25792 = c2579Arr2[i3];
                C2579 c25794 = c2579Arr2[i4];
                if (AbstractC2444.m5564(0L, c25794.f9798 - c25792.f9798) >= 0) {
                    c25792 = c25794;
                }
            }
            if (AbstractC2444.m5564(0L, c25792.f9798 - c25793.f9798) <= 0) {
                break;
            }
            int i6 = c25792.f9796;
            c25792.f9796 = i;
            ((C2579[]) this.f4252)[i] = c25792;
            i = i6;
        }
        ((C2579[]) this.f4252)[i] = c25793;
        c25793.f9796 = i;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public void m3477(int i, C2579 c2579) {
        while (true) {
            int i2 = i >> 1;
            if (i2 == 0) {
                break;
            }
            C2579 c25792 = ((C2579[]) this.f4252)[i2];
            if (AbstractC2444.m5564(0L, c2579.f9798 - c25792.f9798) <= 0) {
                break;
            }
            c25792.f9796 = i;
            ((C2579[]) this.f4252)[i] = c25792;
            i = i2;
        }
        ((C2579[]) this.f4252)[i] = c2579;
        c2579.f9796 = i;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m3478(long[] jArr) {
        int length = this.f4254 + jArr.length;
        long[] jArr2 = (long[]) this.f4252;
        if (length > jArr2.length) {
            this.f4252 = Arrays.copyOf(jArr2, Math.max(jArr2.length * 2, length));
        }
        System.arraycopy(jArr, 0, (long[]) this.f4252, this.f4254, jArr.length);
        this.f4254 = length;
    }
}
