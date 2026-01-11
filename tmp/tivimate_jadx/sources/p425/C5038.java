package p425;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import j$.util.Objects;
import p055.C1471;
import p059.C1520;
import p283.C3569;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p384.C4603;
import ᐧﹳ.ʽ;

/* renamed from: ﹶ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5038 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C1471 f18942;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Handler f18943;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f18944;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C5027 f18945;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1520 f18946;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C5049 f18947;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C4603 f18948;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3569 f18949;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f18950;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C5033 f18951;

    public C5038(Context context, C3569 c3569, C1471 c1471, C4603 c4603) {
        Context applicationContext = context.getApplicationContext();
        this.f18950 = applicationContext;
        this.f18949 = c3569;
        this.f18942 = c1471;
        this.f18948 = c4603;
        String str = AbstractC3712.f14481;
        Looper myLooper = Looper.myLooper();
        Handler handler = new Handler(myLooper == null ? Looper.getMainLooper() : myLooper, null);
        this.f18943 = handler;
        this.f18945 = new C5027(this);
        this.f18946 = new C1520(5, this);
        C5049 c5049 = C5049.f18991;
        String str2 = Build.MANUFACTURER;
        Uri uriFor = (str2.equals("Amazon") || str2.equals("Xiaomi")) ? Settings.Global.getUriFor("external_surround_sound_enabled") : null;
        this.f18951 = uriFor != null ? new C5033(this, handler, applicationContext.getContentResolver(), uriFor) : null;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9948(AudioDeviceInfo audioDeviceInfo) {
        C4603 c4603 = this.f18948;
        if (Objects.equals(audioDeviceInfo, c4603 == null ? null : (AudioDeviceInfo) c4603.f17126)) {
            return;
        }
        C4603 c46032 = audioDeviceInfo != null ? new C4603(audioDeviceInfo) : null;
        this.f18948 = c46032;
        m9949(C5049.m9954(this.f18950, this.f18942, c46032));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9949(C5049 c5049) {
        if (!this.f18944 || c5049.equals(this.f18947)) {
            return;
        }
        this.f18947 = c5049;
        C5031 c5031 = (C5031) this.f18949.f13957;
        Looper myLooper = Looper.myLooper();
        boolean z = c5031.f18873 == myLooper;
        StringBuilder sb = new StringBuilder("Current looper (");
        sb.append(myLooper == null ? "null" : myLooper.getThread().getName());
        sb.append(") is not the playback looper (");
        Looper looper = c5031.f18873;
        sb.append(looper != null ? looper.getThread().getName() : "null");
        sb.append(")");
        AbstractC3731.m7848(sb.toString(), z);
        C5049 c50492 = c5031.f18847;
        if (c50492 == null || c5049.equals(c50492)) {
            return;
        }
        c5031.f18847 = c5049;
        ʽ r6 = c5031.f18870;
        if (r6 != null) {
            r6.ٴﹶ();
        }
    }
}
