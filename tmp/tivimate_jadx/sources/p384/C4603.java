package p384;

import android.app.ActivityManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Surface;
import androidx.core.widget.NestedScrollView;
import androidx.leanback.widget.InterfaceC0102;
import com.google.android.gms.internal.measurement.ᵎ;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import p022.C1036;
import p055.C1469;
import p070.C1630;
import p186.InterfaceC2772;
import p220.C3029;
import p220.InterfaceC3037;
import p262.C3433;
import p347.C4279;
import p392.C4651;
import p395.C4716;
import p395.C4722;
import p395.InterfaceC4718;
import p411.C4894;
import p411.CallableC4900;
import p411.RunnableC4889;
import p447.C5253;
import p447.C5256;
import p447.C5311;
import p447.C5313;
import p447.C5322;
import p447.C5337;
import p447.C5344;
import p447.EnumC5232;
import p447.InterfaceC5292;
import p447.InterfaceC5319;
import p456.InterfaceC5378;
import p457.AbstractC5389;
import p457.InterfaceC5391;
import ʽⁱ.ᵎﹶ;

/* renamed from: ⁱʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4603 implements InterfaceC5378, InterfaceC4718, InterfaceC3037, InterfaceC2772, InterfaceC5292, InterfaceC5319, InterfaceC5391, InterfaceC0102 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object f17126;

    public C4603(int i) {
        switch (i) {
            case 11:
                this.f17126 = new SparseArray();
                return;
            default:
                this.f17126 = new C1036(5, 1.0f, false);
                return;
        }
    }

    public /* synthetic */ C4603(Object obj) {
        this.f17126 = obj;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static C4603 m9144(String str) {
        return new C4603((TextUtils.isEmpty(str) || str.length() > 1) ? EnumC5232.f19673 : C5311.m10532(str.charAt(0)));
    }

    @Override // p456.InterfaceC5378
    public void update(byte[] bArr) {
        ((MessageDigest) this.f17126).update(bArr);
    }

    @Override // p457.InterfaceC5391
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void mo9145() {
        C4651 c4651 = ((AbstractC5389) this.f17126).f4505;
        if (c4651 != null) {
            c4651.m9260();
        }
    }

    @Override // p447.InterfaceC5292
    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo9146(String str, String str2, Bundle bundle) {
        C5253 c5253 = (C5253) this.f17126;
        if (!TextUtils.isEmpty(str)) {
            c5253.getClass();
            throw new IllegalStateException("Unexpected call on client side");
        }
        ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20206.getClass();
        c5253.m10379("auto", "_err", bundle, true, true, System.currentTimeMillis());
    }

    @Override // p395.InterfaceC4718
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public byte[] mo9147(C4716 c4716) {
        throw new UnsupportedOperationException();
    }

    @Override // p456.InterfaceC5378
    /* renamed from: ˈ */
    public byte[] mo9115() {
        return ((MessageDigest) this.f17126).digest();
    }

    @Override // p186.InterfaceC2772
    /* renamed from: ˉʿ */
    public void mo6050() {
        ((NestedScrollView) this.f17126).f332.abortAnimation();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public void m9148(long j) {
        C5256 c5256 = (C5256) this.f17126;
        c5256.m10252();
        c5256.m10392();
        C5322 c5322 = (C5322) ((ᵎﹶ) c5256).ʾˋ;
        C5313 c5313 = c5322.f20205;
        C5322.m10560(c5313);
        if (c5313.m10548(j)) {
            C5322.m10560(c5313);
            c5313.f20041.m10552(true);
            c5322.m10566().m10360();
        }
        C5322.m10560(c5313);
        c5313.f20033.m9216(j);
        if (c5313.f20041.m10553()) {
            m9152(j);
        }
    }

    @Override // p457.InterfaceC5391
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo9149() {
        AbstractC5389 abstractC5389 = (AbstractC5389) this.f17126;
        Surface surface = abstractC5389.f20550;
        if (surface != null) {
            C3433 c3433 = abstractC5389.f20529;
            Handler handler = (Handler) c3433.f13458;
            if (handler != null) {
                handler.post(new RunnableC4889(c3433, surface, SystemClock.elapsedRealtime()));
            }
            abstractC5389.f20547 = true;
        }
    }

    @Override // p186.InterfaceC2772
    /* renamed from: ٴﹶ */
    public float mo6052() {
        return -((NestedScrollView) this.f17126).getVerticalScrollFactorCompat();
    }

    @Override // p395.InterfaceC4718
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public byte[] mo9150(UUID uuid, C4722 c4722) {
        return (byte[]) this.f17126;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public void m9151() {
        C5256 c5256 = (C5256) this.f17126;
        c5256.m10252();
        C5322 c5322 = (C5322) ((ᵎﹶ) c5256).ʾˋ;
        C5313 c5313 = c5322.f20205;
        C5322.m10560(c5313);
        C4279 c4279 = c5322.f20206;
        c4279.getClass();
        if (c5313.m10548(System.currentTimeMillis())) {
            C5313 c53132 = c5322.f20205;
            C5322.m10560(c53132);
            c53132.f20041.m10552(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20350.m10217("Detected application was in foreground");
                c4279.getClass();
                m9152(System.currentTimeMillis());
            }
        }
    }

    @Override // p186.InterfaceC2772
    /* renamed from: ᵔᵢ */
    public boolean mo6053(float f) {
        if (f == 0.0f) {
            return false;
        }
        mo6050();
        ((NestedScrollView) this.f17126).m127((int) f);
        return true;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public void m9152(long j) {
        C5256 c5256 = (C5256) this.f17126;
        c5256.m10252();
        C5322 c5322 = (C5322) ((ᵎﹶ) c5256).ʾˋ;
        if (c5322.m10568()) {
            C5313 c5313 = c5322.f20205;
            C5322.m10560(c5313);
            c5313.f20033.m9216(j);
            c5322.f20206.getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20350.m10216(Long.valueOf(elapsedRealtime), "Session started, time");
            long j2 = j / 1000;
            Long valueOf = Long.valueOf(j2);
            C5253 c5253 = c5322.f20187;
            C5322.m10559(c5253);
            c5253.m10384(j, valueOf, "auto", "_sid");
            C5322.m10560(c5313);
            c5313.f20032.m9216(j2);
            c5313.f20041.m10552(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j2);
            C5322.m10559(c5253);
            c5253.m10374(j, bundle, "auto", "_s");
            String m1132 = c5313.f20027.m1132();
            if (TextUtils.isEmpty(m1132)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", m1132);
            C5322.m10559(c5253);
            c5253.m10374(j, bundle2, "auto", "_ssr");
        }
    }

    @Override // p447.InterfaceC5319
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public /* synthetic */ void mo9153(String str, int i, Throwable th, byte[] bArr, Map map) {
        ((C5337) this.f17126).m10603(str, i, th, bArr, map);
    }

    @Override // p457.InterfaceC5391
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void mo9154(C1469 c1469) {
    }

    @Override // p220.InterfaceC3037
    /* renamed from: ﾞʻ */
    public C3029 mo6579(Object obj) {
        C1630 c1630 = (C1630) obj;
        C4894 c4894 = ((CallableC4900) this.f17126).f18278;
        return c1630 == null ? ᵎ.ᵔᵢ((Object) null) : ᵎ.ʻٴ(Arrays.asList(C4894.m9688(c4894), c4894.f18252.m9595(c4894.f18254.f8651, null)));
    }

    @Override // p457.InterfaceC5391
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void mo9155() {
        AbstractC5389 abstractC5389 = (AbstractC5389) this.f17126;
        if (abstractC5389.f20550 != null) {
            abstractC5389.m10801(0, 1);
        }
    }
}
